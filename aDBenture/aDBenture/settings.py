
import os
from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'idtbd#kgl_5j6qzryrm+qxm6845_ws9og-035qjngru+ou58u-'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []

# Login
LOGIN_URL = 'login'
LOGIN_REDIRECT_URL = 'home'

# Application definition
INSTALLED_APPS = [
    'account',
    'explorer',
    'widget_tweaks',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'aDBenture.urls'

# mail for password reset
EMAIL_FILE_PATH = os.path.join(BASE_DIR, 'sent_emails')
EMAIL_BACKEND = "django.core.mail.backends.filebased.EmailBackend"

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'aDBenture.wsgi.application'
AUTH_USER_MODEL = 'account.Account'

# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    },

    'LokiDB': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'LokiDB',
        'USER': 'postgres',
        'PASSWORD': '0000',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    },

    'WinDBoe': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'WinDBoe',
        'USER': 'postgres',
        'PASSWORD': '0000',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    }
}

# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, "static"),
)
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
STATIC_ROOT = os.path.join(BASE_DIR, 'static_cdn')
STATIC_URL = '/static/'
MEDIA_URL = '/media/'

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]

#TO DO: Set to readonly after development
# EXPLORER_CONNECTIONS = { 'LokiDB': 'LokiDB', 'WinDBoe': 'WinDBoe' }
# EXPLORER_DEFAULT_CONNECTION = 'LokiDB'

EXPLORER_CONNECTIONS = { 'WinDBoe': 'WinDBoe', 'LokiDB': 'LokiDB' }
EXPLORER_DEFAULT_CONNECTION = 'WinDBoe'
