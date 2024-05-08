from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("post/", views.post, name="post"),
    path("delete/<int:task_id>/", views.delete, name="delete"),
    path("edit/<int:task_id>/", views.edit, name="edit"),
    path("put/<int:task_id>/", views.put, name="put"),
]