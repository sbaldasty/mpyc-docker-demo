# mpyc-docker-demo

Running a mpyc demo with SSL in a Docker container environment.

Some outstanding tasks:

- Containers shouldn't have copies of each other's keys. Best would be for each to create its own.
- Only copy files onto image that belongs there.
- Maybe each container should have its own image.