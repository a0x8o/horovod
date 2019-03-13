#!/bin/bash

function update_bistro_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/bistro;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/bistro/;
  cd ~/Development/axbarreto/bistro/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase;
  # git pull --rebase https://github.com/axbaretto/bistro master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_kubernetes_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`

  cd ~/Development/facebook/kubernetes/kubernetes;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/kubernetes/kubernetes/;
  cd ~/Development/axbarreto/kubernetes/kubernetes/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase ;
  # git pull --rebase https://github.com/axbaretto/kubernetes.git master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_beam_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/beam;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/beam/;
  cd ~/Development/axbarreto/beam/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase https://github.com/axbaretto/beam.git master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_drill_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/drill;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/drill/;
  cd ~/Development/axbarreto/drill/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase;
  # git pull --rebase https://github.com/axbaretto/drill.git master;
  # git checkout axbaretto;
   #git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_flink_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/flink;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/flink/;
  cd ~/Development/axbarreto/flink/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase;
  # git pull --rebase https://github.com/axbaretto/flink.git master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_kafka_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/kafka;
  echo "Updating $PWD";
  git checkout trunk;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/kafka/;
  cd ~/Development/axbarreto/kafka/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase;
  # git pull --rebase https://github.com/axbaretto/kafka.git master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

function update_presto_only() {
  DATE=`date +%Y-%m-%d:%H:%M:%S`
  PWD=`pwd`
  cd ~/Development/facebook/presto;
  echo "Updating $PWD";
  git checkout master;
  git pull;
  yes | cp -r ./* ~/Development/axbarreto/presto/;
  cd ~/Development/axbarreto/presto/;
  echo "Updating $PWD";
  git checkout axbaretto;
  git add .;
  # git commit -m "$DATE";
  git commit;
  git push origin axbaretto;
  # # git pull --rebase;
  # git pull --rebase https://github.com/axbaretto/presto.git master;
  # git checkout axbaretto;
  # git rebase master;
  git checkout master;
  git merge axbaretto;
  git push origin master;
}

update_bistro_only

update_kubernetes_only

update_beam_only
update_drill_only
update_flink_only

update_kafka_only

update_presto_only

exit $?
