#!groovy?

node {
    //deleteDir()

	 stage('Compilando con maven')
	{		//Configuration / Global Tool COnfiguration / MAVEN jenkinsmvn  ==> MAVEN_HOME = D:\Tools\apache-maven-3.6.0
	        def mvnHome = tool 'jenkinsmvn';
	  	    bat "${mvnHome}/bin/mvn clean package"   
	}

    stage('Construyendo Docker ') {
		   
           script{
				bat "docker stop valaxy_demo"
				bat "docker rm -f valaxy_demo"
				bat "docker image rm -f valaxy_demo"
				bat "docker build -t valaxy_demo ."
           }
    }

    stage('Iniciando Docker ') {
		   
           script{
				bat "docker run -d --name valaxy_demo -p 8090:8080 valaxy_demo"
           }
    }
	
	
}