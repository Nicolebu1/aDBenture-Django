from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from account.forms import RegistrationForm, AccountAuthenticationForm

# Create your views here.

@login_required
def profileView(request):
    return render(request, "profile.html")


def loginView(request):
    context = {}
    if request.POST:
        form = AccountAuthenticationForm(request.POST)
        if form.is_valid():
            email = request.POST['email']
            password = request.POST['password']

            user = authenticate(email=email, password=password)
            login(request, user)
            return redirect('profile')
    else:
        form = AccountAuthenticationForm()
    context['form'] = form
    return render(request, "login.html", context)

def logoutView(request):
    logout(request)
    return redirect("login")

def registerView(request):
    context = {}
    if request.POST:
        form = RegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('profile')
    else:
        form = RegistrationForm()
    context['form'] = form
    return render(request, "register.html", context)

def avatarView(request):
    return render(request, "avatar.html")

def settingsView(request):
    return render(request, "settings.html")


