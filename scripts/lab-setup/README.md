## Lab Setup scripts

This folder contains the scripts to provision a number of clusters in parallel on AWS.

The produced log files are to be found in the workspace/ folder

By default the clusters will be named as follows:
vp-workshop-01
vp-workshop-02
...

It assumes three files:
1. `~/.pullsecret.json` exists and is in the canonical json form like (no spaces and must use double quotes!):
  `{"auths":{"cloud.openshift.com":{"auth":".....213....","email": "foo@bar.it"..}}}`

   Override the `pull_secrets_file` variable if you use a different file

2. `~/.ssh/id_rsa.pub` is the public key to upload to the clusters. Override
   `ssh_pub_file` if you use a different public key

3. `~/.vp_workshop_common_pass` is the file containing the password to be used
   across all clusters OCP clusters want the password to be in this form:
   f1234-bbcde-ccc22-aaa12

## Installation

Check out `vars/default.yaml` and tweak cluster size, prefix or any other variables (OCP version).
Then run:

    make install

All the openshift-install files will be in `~/vp-workshop-output/ocp_install`. One folder per cluster.
After the installation is complete all files ready for students will be in `~/vp-workshop-output/student_files/`
ready to be exported via a scripts in there called `serve.sh`.


## Destruction

Run: `make destroy`


## Add additional clusters

Run: `make resize`


## Notes

Requirements used to write these scripts:
1. Works in parallel (each cluster deployment takes ~25-30 mins, so it cannot be serialized) [done]
2. As input it needs the number of clusters, the type/size of clusters, the AWS region, the exact OCP version [done]
3. It needs to output a clean tree of kubeconfig + kubepassword files that are simple to share in the classroom [done]
4. Super simple to setup (make install and make destroy are the only entry points, in addition to make resize) [done]
5. It sets the same password on all clusters for added simplicity when troubleshooting [done]
6. Be able to add additional clusters after having already deployed some [done]
7. Make it super simple to share console URLs + kubeconfig files for students [done]
