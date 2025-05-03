from django.urls import get_resolver, URLPattern, URLResolver

def normalize_form_name(name):
    """
    Normalize form name by stripping spaces and converting to lowercase.
    """
    return name.lower().replace(' ', '')

def extract_view_names(patterns, prefix=''):
    form_names = []

    for pattern in patterns:
        if isinstance(pattern, URLPattern):
            if pattern.name:  # Named URL pattern
                form_name = pattern.name.lower().replace(' ', '')
                form_names.append(form_name)
        elif isinstance(pattern, URLResolver):
            nested_prefix = f"{prefix}{pattern.pattern}"
            form_names += extract_view_names(pattern.url_patterns, prefix=nested_prefix)

    return form_names

def get_all_form_names_from_urls():
    """
    Automatically collects all named URL patterns across the entire Django project
    and returns them as normalized form names (lowercase, no spaces).
    """
    urlconf = get_resolver()
    return extract_view_names(urlconf.url_patterns)
