# create a new process and name it killmenow 

exec { 'pkill killmenow' :
    path    => '/bin/',
    command => 'pkill killmenow',
    }
