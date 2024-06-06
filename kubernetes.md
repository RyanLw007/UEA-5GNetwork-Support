# This file contains instructions for how to install kubernetes manually

## The first step is to download the kubernetes bundle, but we will not install yet

<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates curl
    sudo mkdir -p -m 755 /etc/apt/keyrings
    curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
    sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg # allow unprivileged APT programs to read this keyring
    echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
    sudo chmod 644 /etc/apt/sources.list.d/kubernetes.list
    </code>
    </pre>
</div>



## Next Docker is installed allong with containered as these are used by kubernetes

<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    sudo apt-get update
    sudo apt install docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo apt update
    </code>
    </pre>
</div>

## After this kubernetes can be installed with these command

<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    sudo apt-get install -y kubectl kubeadm kubelet
    </code>
    </pre>
</div>

please bear in mind that this will install the versions of
kubectl, kubeadm and kubelet associated with the bundle installed in the first step

## Next you need to ensure that docker can be ran by any user, because, by default it only runs in root

### may result in saying group already exists, continue anyway

<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    docker run hello-world
    </code>
    </pre>
</div>

you should get a response similar to this:

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

## Lastly, to create the cluster use this command
change the requirements as needed for the situation as this likely won't be suitable for all cases


<div>
    <button onclick="copyToClipboard()">Copy Code</button>
    <pre id="codeBlock">
    <code>
    minikube start --cpus=6 --memory=8g --disk-size=20g --driver=docker
    </code>
    </pre>
</div>


<div style="display: none;">
    <script>
    function copyToClipboard() {
        var code = document.getElementById('codeBlock').innerText;
        navigator.clipboard.writeText(code).then(function() {
            alert('Code copied to clipboard!');
        }, function(err) {
            console.error('Could not copy text: ', err);
        });
    }
    </script>
</div>