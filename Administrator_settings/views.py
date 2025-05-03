from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required, user_passes_test
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.db import connection  # Import connection for raw SQL queries
from .models import CustomUser
from .forms import UserForm
from django.contrib.auth import authenticate, login
from django.contrib.auth.hashers import check_password



def user_list(request):
    """Display all users with options to add, edit, and delete."""
    users = CustomUser.objects.all()
    return render(request, 'Administrator_settings/user_list.html', {'users': users})

def user_add(request):
    with connection.cursor() as cursor:
        cursor.execute("SELECT id, city_name FROM location")
        locations_list = cursor.fetchall()

    locations = [{'id': row[0], 'name': row[1]} for row in locations_list]  # Fix here

    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            # Replace ID with city_name manually (if needed)
            selected_id = request.POST.get("location")
            selected_location = next((l["name"] for l in locations if str(l["id"]) == selected_id), None)
            form.instance.location = selected_location  # Save name, not ID
            form.save()
            return redirect('user_list')
    else:
        form = UserForm()

    return render(request, 'Administrator_settings/user_form.html', {'form': form, 'title': 'Add User', 'locations': locations})

def user_edit(request, pk):
    with connection.cursor() as cursor:
        cursor.execute("SELECT id, city_name FROM location")
        locations_list = cursor.fetchall()

    locations = [{'id': row[0], 'name': row[1]} for row in locations_list]

    user_instance = get_object_or_404(CustomUser, pk=pk)

    if request.method == 'POST':
        form = UserForm(request.POST, instance=user_instance)
        if form.is_valid():
            # Replace ID with city_name manually
            selected_id = request.POST.get("location")
            selected_location = next((l["name"] for l in locations if str(l["id"]) == selected_id), None)
            form.instance.location = selected_location
            form.save()
            return redirect('user_list')
    else:
        form = UserForm(instance=user_instance)

    return render(request, 'Administrator_settings/user_form.html', {
        'form': form,
        'title': 'Edit User',
        'locations': locations
    })



def user_delete(request, pk):
    """Delete a vendor."""
    vendor = get_object_or_404(CustomUser, pk=pk)
    if request.method == 'POST':
        vendor.delete()
        return redirect('user_list')
    
    return render(request, 'Administrator_settings/user_confirm_delete.html', {'user': user_instance})


def user_detail(request, pk):
    """View user details."""
    # Fetch locations using raw SQL (ensure column names are correct)
    with connection.cursor() as cursor:
        cursor.execute("SELECT id, city_name FROM location")  # Ensure correct column name
        locations_list = cursor.fetchall()

    # Convert list of tuples to dictionaries
    locations = [{'id': row[0], 'name': row[1]} for row in locations_list]


    user_instance = get_object_or_404(CustomUser, pk=pk)
    form = UserForm(instance=user_instance)

    return render(request, 'Administrator_settings/user_form.html', {
        'form': form, 
        'title': 'View User', 
        'view_mode': True, 
        'locations': locations  # ✅ Pass locations here
    })

from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect

def user_login(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)  # ✅ Sets request.user
            request.session["is_admin"] = user.is_admin
            request.session["location"] = None if user.is_admin else user.location
            return redirect("dashboard")
        else:
            return render(request, "login.html", {'error_message': 'Invalid username or password'})

    return render(request, "login.html")





from django.shortcuts import render, redirect
from .models import UserRights, CustomUser
from .forms import UserRightsForm
from django.db.models import Q
from .utils import get_all_form_names_from_urls
from django.contrib.auth.models import Group


def normalize_form_name(name):
    return name.lower().replace(' ', '')



from .utils import get_all_form_names_from_urls, normalize_form_name


def user_rights_form(request):
    if not request.session.get('is_admin') and not request.session.get('location'):
        return redirect('login')
     # Redirect to login if not authenticated

    # Fetch all users and the forms present in the project
    users = CustomUser.objects.all()
    forms_data = get_all_form_names_from_urls()  # Automatically fetch all forms in the project
    normalized_forms = [normalize_form_name(f) for f in forms_data]

    if request.method == 'POST':
        # Process the POST request to update permissions for the selected user
        user_id = request.POST.get('user')
        user = CustomUser.objects.get(id=user_id)

        # Delete existing rights for the user
        UserRights.objects.filter(user=user).delete()

        # Save new user rights
        for form in forms_data:
            norm = normalize_form_name(form)
            prefix = f"{norm}_"

            ur = UserRights(
                user=user,
                form_name=norm,
                can_view=bool(request.POST.get(prefix + "view")),
                can_add=bool(request.POST.get(prefix + "add")),
                can_edit=bool(request.POST.get(prefix + "edit")),
                can_delete=bool(request.POST.get(prefix + "delete")),
                all_access=bool(request.POST.get(prefix + "all"))
            )
            ur.save()

        return redirect('user_rights_form')  # Redirect after saving the user rights

    context = {
        'users': users,
        'forms_data': forms_data,
        'normalize': normalize_form_name
    }
    return render(request, 'Administrator_settings/user_rights_form.html', context)



