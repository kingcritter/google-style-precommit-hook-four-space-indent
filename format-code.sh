#!/usr/bin/env sh
mkdir -p .cache
cd .cache
if [ ! -f google-java-format-1.6-all-deps.jar ]
then
    curl -LJO "https://github.com/google/google-java-format/releases/download/google-java-format-1.6/google-java-format-1.6-all-deps.jar"
    chmod 755 google-java-format-1.6-all-deps.jar
fi
cd ..

changed_java_files=$(git diff --cached --name-only --diff-filter=ACMR | grep ".*java$" )
echo $changed_java_files
# --aosp switches indents to four spaces from the default two
# We don't want to auto-remove imports. Due to javasist, not all imports are statically analysable.
java -jar .cache/google-java-format-1.6-all-deps.jar \
    --skip-removing-unused-imports \
    --aosp \
    --replace $changed_java_files
