from django.urls import path
from account.views import registerView, profileView, logoutView, loginView, avatarView, settingsView
from django.contrib.auth import views as auth_views

urlpatterns = [

    #path name = .html name!
    path('', loginView, name="login"),
    path('login', loginView, name="login"),
    path('logout', logoutView, name="logout"),
    path('register', registerView, name="register"),
    path('profile', profileView, name="profile"),
    path('avatar', avatarView, name='avatar'),
    path('settings', settingsView, name='settings'),


    # Password reset links (ref: https://github.com/django/django/blob/master/django/contrib/auth/views.py)
    path('account/password_change/done/',
         auth_views.PasswordChangeDoneView.as_view(template_name='registration/password_change_done.html'),
         name='password_change_done'),

    path('account/password_change/',
         auth_views.PasswordChangeView.as_view(template_name='registration/password_change.html'),
         name='password_change'),

    path('account/password_reset/done/',
         auth_views.PasswordResetCompleteView.as_view(template_name='registration/password_reset_done.html'),
         name='password_reset_done'),

    path('account/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(),
         name='password_reset_confirm'),
    path('account/password_reset/', auth_views.PasswordResetView.as_view(), name='password_reset'),

    path('account/reset/done/',
         auth_views.PasswordResetCompleteView.as_view(template_name='registration/password_reset_complete.html'),
         name='password_reset_complete'),
]