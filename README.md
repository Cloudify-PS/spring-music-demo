# Spring Music demo

These two blueprints deploy a sample Spring Music app on AWS and Azure.

## Running

If you deploy the blueprint on a cloud where the agent can connect to the manager via the manager's
private IP, there's nothing special that needs to be done.

Otherwise, you must specify a proper value to the `cfy_network_name` input, that represents a Cloudify
Management Network which maps to an IP that is routable from the agent.

## Notes

* We don't officially support Ubuntu 16. It looks like Celery has a problem on Ubuntu 16, making it impossible
to stop the agent (before deleting the VM). That's because Celery becomes completely stuck - not responding to
signals, so it can't be stopped. There is no solution for this other than running `uninstall` with `ignore_failure=true`.
