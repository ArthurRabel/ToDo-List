from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("push/", views.push, name="push"),
    path("delete/<int:task_id>/", views.delete, name="delete"),
    path("<int:task_id>/", views.task, name="task"),
]