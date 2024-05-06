from django.shortcuts import render, redirect
from .models import Task


def index(request):
    task_list = Task.objects.all()
    context = {"task_list": task_list}
    return render(request, "polls/index.html", context)

def push(request):
    if request.method == 'POST':
        title = request.POST['title']
        text = request.POST['text']
        Task.objects.create(title_task=title,text_task=text)
        return redirect('index')
    
def delete(request, task_id):
    if request.method == 'POST':
        taskSelected = Task.objects.get(pk=task_id)
        taskSelected.delete()
        return redirect('index')

def task(request, task_id):
    taskSelected = Task.objects.get(pk=task_id)
    context = {"taskSelected": taskSelected}  
    return render(request, "polls/task.html", context)