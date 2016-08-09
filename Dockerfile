FROM java:8
COPY Server.java /
RUN javac Server.java
EXPOSE 8087
ENTRYPOINT ["java"]
CMD ["Server"]
