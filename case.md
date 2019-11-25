Challenge for Devops (DevOps, Provisioning/Docker/Kubernetes)
Background
Your team is working on a python project. Due to local environment differences, developers are
observing different outputs from the same codebase. For a smooth development process this
shouldn’t be the case. You start preparing docker containers to standardize development
environments and solve this issue.
Objectives
Containerize the development environment according to proper docker usage patterns. Use the
provided gist as the application code. Application needs mysql to work.
Docker environment, that will be managed with Kubernetes, needs to be automatically
provisioned with Vagrant, so that it can prepared to execute the python application.
Finally, the code that is provided should be easily accessible/modifiable on the cluster, since it is
meant to be used as a local dev environment. How you will do this is your decision. The
important thing is to see the result of a code change as fast and frictionless as possible.
Evaluation
Time management is left to the candidate, as she sets her own deadline. Note that submitting
work on the deadline agreed upon is still important. She should submit the whole project, which
in turn will be compiled and executed.
All steps required to compile and execute the code should be documented, in whatever
reasonable way the candidate sees fit. In the absence of such a guide, and if the code cannot
be compiled and run trivially, it will only be evaluated for code quality.

Requirements
● Docker Base Image for Python App: alpine:3.7
● Vagrant Base Image: geerlingguy/ubuntu1604
● While developing the project use Github, and keep a decent history so your approach to
the project is visible.
● Python version must be 2.7.x

Provided Materials
● Application code: https://gist.github.com/vedit/32f37e0b8f842521fbc89e9d8e2bfaf9
● Required python packages:
○ flask
○ MySQL-python

Deliverables
1. Github repo of the python application
2. A simple readme on how to use the tooling
3. Vagrantfile at the root directory of the project
Objectives
1. A single command should provision the Kubernetes Cluster and launch docker
containers on it
2. Zero or minimal effort to see the result of a code change on the app
3. All interactions with the environment must be made outside of the Vagrant
Bonus Points
● Use Gunicorn for python application server.
● Make mysql data persistent

Notes
● Focus on a daily development use. Smoothness and stability is more important than
anything else.
● Please do not use the string “Modanisa” any part of the code or the name of the repo.
● Simple engineering is the best engineering
