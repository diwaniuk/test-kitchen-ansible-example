### Test Kitchen + Ansible

#### Structure
```
├── .kitchen.yml                                  # kitchen config file 
├── ansible.cfg                                   # ansible config file 
├── chefignore  
├── Gemfile
├── Gemfile.lock
├── README.md
├── requirements.yml                              # external roles which should be installed into container
├── roles                                         # local roles which will be copied to container
│   └── motd                                      # example local role 
│       ├── handlers
│       ├── tasks
│       │   └── main.yml
│       ├── templates
│       │   └── motd.j2
│       └── vars
│           └── main.yml
└── test                                         #  kitchen main catalog
    └── integration
        ├── dbservers                            #  database servers suite
        │   ├── default.yml                      #  playbook for db servers
        │   └── serverspec
        │       ├── postgresql_spec.rb           #  spec file for postgres service
        │       └── spec_helper.rb
        ├── default                              
        │   ├── default.yml                      
        │   └── serverspec
        │       ├── default_spec.rb              
        │       └── spec_helper.rb
        └── webservers                           
            ├── default.yml                       
            └── serverspec
                ├── apache_spec.rb
                └── spec_helper.rb

```

#### Installation

##### clone codebase to the local machine.
```
bash$ git clone https://github.com/diwaniuk/test-kitchen-ansible-example
```

##### check if all required commands are install  
* docker
* ruby
* gem
* bundle

##### install required gems

```
bash$ bundle install
```

#### Usage

##### execeute test
```
  $ kitchen test
```

#### Some useful resources
##### Kitchen
* https://docs.chef.io/kitchen.html
* http://kitchen.ci/docs/getting-started/
* https://github.com/neillturner/kitchen-ansible/blob/master/provisioner_options.md

##### ServerSpec
* http://serverspec.org/resource_types.html 

##### Other
* http://www.slideshare.net/MartinEtmajer/testing-ansible-roles-with-test-kitchen-serverspec-and-rspec-48185017


