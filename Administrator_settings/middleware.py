from .models import UserRights

# middleware.py
class UserPermissionMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        # Allow unauthenticated and admin users through
        if not request.user.is_authenticated or request.user.is_superuser:
            return self.get_response(request)

        # Only proceed with permission assignment for non-superusers
        user_rights = UserRights.objects.filter(user=request.user)
        permissions = {}

        for ur in user_rights:
            form = ur.form_name.lower().replace(" ", "")
            permissions[form] = {
                'view': ur.can_view,
                'add': ur.can_add,
                'edit': ur.can_edit,
                'delete': ur.can_delete,
                'all': ur.all_access,
            }

        request.user_permissions = permissions

        return self.get_response(request)


