# UEA-5GNetwork-Support

[kubernetes.md](./kubernetes.md) provides instructions on how to create a kubernetes cluster
using Minikube, there is information on what can be changed to support your scenario.

[vmstart.sh](./vmstart.sh) is a bash script that starts a vm with a given name.
to run this you must first allow it to run with
<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    chmod +X vmstart.sh
    </code>
    </pre>
</div>
to run the script type
<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    ./vmstart.sh "Your_VM_Name"
    </code>
    </pre>
</div>

This is included as it was a part of our research project and it could be useful for other configurations

## CoreKube

Provided [here](https://github.com/RyanLw007/nervion-powder) is the fork of Nervion with minor edits in an attempt to update the Kubernetes version
