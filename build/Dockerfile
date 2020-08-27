FROM quay.io/operator-framework/ansible-operator:v0.17.0

USER 0
ENV http_proxy=http://proxy.esl.cisco.com:80
ENV https_proxy=http://proxy.esl.cisco.com:80
RUN update-crypto-policies --set LEGACY && pip3 install pyopenssl
USER 1001
RUN ansible-galaxy collection install cisco.mso --force
ENV http_proxy=''
ENV https_proxy=''

COPY watches.yaml ${HOME}/watches.yaml
COPY playbooks/ ${HOME}/playbooks/
COPY roles/ ${HOME}/roles/
