# Java versions
# Maven bin path (không cần export M2_HOME)
MAVEN_BIN=/opt/apache-maven-3.6.3/bin

set_java() {
  export JAVA_HOME="$1"
  export PATH="$JAVA_HOME/bin:$MAVEN_BIN:$PATH"
  #echo "Switched JAVA_HOME to $JAVA_HOME"
}

alias Java11='set_java /usr/lib/jvm/java-11-openjdk-amd64'
alias Java17='set_java /home/hungnv/Documents/thirdparty/jdk-17.0.11'
alias Java21='set_java /home/hungnv/Documents/thirdparty/jdk-21.0.8'

# Default Java
Java11
