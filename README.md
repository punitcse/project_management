# README

Keep track of Project conversation history.

# Getting Started

1.Install Postgres version 14.13. Following this guide https://www.dataquest.io/blog/install-postgresql-14-7-for-macos/
```bash
brew install postgresql@14 
```

2.Create database
```bash
bin/rails db:create
```

3.Migrate database 
```bash
bin/rails db:migrate
```

4.Start application server and visit http://localhost:3000/
```bash
bin/rails s
```
5. To run tests
```bash
rspec spec
```
You can create a new project from here or create a new one. You can also update the existing project.
It wil be shown in the activities on Projects page. you can also add comments and that will show on the same projects page.

Here is the link for deployed link https://project-management-4vnm.onrender.com/

## Original Requirements
Use Ruby on Rails to build a project conversation history. A user should be able to:

- leave a comment
- change the status of the project

The project conversation history should list comments and changes in status.
Please don’t spend any more than 3 hours on this task.

## Questions asked to colleagues/team and answers

**Punit:** Why are we building this project? Can I get some background/context?**

**Answer:** As you know we are Real estate portfolio management company who has many commercial and residence projects across the country. 
We have so many different projects running at any given time. So I want you to create an online system for me to manage different projects.

**Punit:** Just to confirm we only have 3 hours to complete it?

**Answer** yes, we can just do the very basic MVP for now.

**Punit:** How would this help the business?

**Answer:** It would save a lot of time for me as I have to go through excel document which is very time consuming and often lead to an error.
It will also help me in making decisions later such as how long a project takes to finish which will help in making better key decisions like choosing vendors etc.

**Punit:** I would need more details as requirements are vague. Can all users change project status and leave comment? 
Or Will there be different types of users who access different authorisation of system? 

**Answer** Ideally, I want me as an owner. And agents can only comment. But for now given the timeline of 3 hours you can just any user can do both change project status and add a comment.   

**Punit:** What are the details for a project that we want to show like name, status and some description? Anything else?

**Answer** That's all I need.

**Punit:** Do we want the users to login in order to add a comment? Or just add as a guest where they can add name and comment?

**Answer** No need of login for now. Just show when the project status changed. And list the comments based on the recent ones first as a guest.

**Punit** Do we want users to edit/delete comment? As user is not logged in it will add complexity to manage that.

**Answer** It is not needed for the time being once we add login system this can be done.

**Punit** Do we need a limit on how long the comment could be? Also do we need a profanity check?

**Answer**  Max 2000 characters. Profanity check not needed, good idea to add it later though.

**Punit** What will be different project status? 

**Answer** It will be pending, in progress, on hold, completed.

**Punit** Do you need specific layout design?

**Answer** No it should just look presentable.

**Punit** Do we want project created and updated? 
**Answer** Yes, it would be nice, but don't need to show activity for that now.

**Punit**  Let me just reiterate everything I understand and please correct me or add anything you find necessary.
We want to build a project management system which has the following capabilities:
1. User can go to website they see list of projects.  
2. Click on any project which show project name, description and current status.
3. By default, the initial status will be pending. But user can change it to in progress, on hold or completed. They also have capability to update other field in the same form.
4. User can also add a comment by adding their name and comment on the same project page.
5. We show activity of project, when status is changed.
6. Also list comments so recent comment shown first with their name. They cant edit or delete once comment is added.

**Answer** Yeah perfect sounds all good to me.

**Punit** Anything else you want to add or change?

**Answer** No all good let me. Thanks.

<h2>Did not implement due to time constraints</h2>

**Improvements for future version:** I will add some more improvements in this project if I dont have time constraints which are:
1. Scalability could be an issue if we have large number of comments/activities. I will Add pagination for comments and activities.
2. I have added rspec tests, but I will add more tests to cover all scenarios and some system tests.
3. Design is very basic that is done in order to just show it in presentable form. But could have done better.
4. Activity can be added for other actions like when it is created etc..
5. Login and authorisation can be added so we can decide who has access to what.

Some screenshots for running app


![projects.png](projects.png)


![show.png](show.png)

![update_project.png](update_project.png)