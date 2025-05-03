from django import forms
from .models import CustomUser

class UserForm(forms.ModelForm):

    class Meta:
        model = CustomUser
        fields = ['name','password','location']



# administrator_settings/forms.py


from django import forms
from .models import UserRights, CustomUser
from .utils import get_all_form_names_from_urls

class UserRightsForm(forms.ModelForm):
    class Meta:
        model = UserRights
        fields = ['user', 'form_name', 'can_view', 'can_add', 'can_edit', 'can_delete', 'all_access']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        
        # Fetch all form names from the project URLs dynamically
        form_names = get_all_form_names_from_urls()

        # Set choices dynamically based on the form names
        self.fields['form_name'] = forms.ChoiceField(
            choices=[(name, name) for name in form_names],
            required=True
        )


