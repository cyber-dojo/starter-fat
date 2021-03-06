
groovyc -cp /groovy/spock-core-1.0-groovy-2.4.jar *.groovy
if [ $? -eq 0 ]; then
  # run test classes even if they are inner classes
  java -cp .:$(ls /groovy/*.jar | xargs | sed -e 's/ /:/g') \
      org.junit.runner.JUnitCore \
        `ls -1 *Spec*.class | sed 's/\(.*\)\..*/\1/'`
fi