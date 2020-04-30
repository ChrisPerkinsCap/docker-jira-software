FROM atlassian/jira-software:7.13.5-ubuntu

ARG db_host
ARG db_port

ADD ./setenv.sh /opt/atlassian/jira/bin/setenv.sh
ADD ./wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh \
    && chmod +x /opt/atlassian/jira/bin/setenv.sh


#CMD ["/wait-for-it.sh", "$db_host:$db_port", "-s", "-t", "300", "--", "/entrypoint.py"]
CMD ["/wait-for-it.sh", "$db_host:$db_port", "--", "/entrypoint.py"]