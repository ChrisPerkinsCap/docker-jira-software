FROM atlassian/jira-software:7.13.5-ubuntu

ARG db_host
ARG db_port

ADD ./wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

#CMD ["/wait-for-it.sh", "$db_host:$db_port", "-s", "-t", "300", "--", "/entrypoint.py"]
CMD ["/wait-for-it.sh", "$db_host:$db_port", "--", "/entrypoint.py"]