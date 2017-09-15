using System;
using System.Collections.Generic;

namespace MVVMLight_Sample.Model
{
    public class Client
    {
        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        
        public string Image { get; set; }
        public string Phone { get; set; }

        private Values objectValue;
        private List<ProjectProgram> projectList;

        public Values ObjectVAlue
        {
            get
            {
                return objectValue;
            }

            set
            {
                objectValue = value;
            }
        }

        public List<ProjectProgram> ProjectList
        {
            get
            {
                return projectList;
            }

            set
            {
                projectList = value;
            }
        }

        public Client()
        {
            ObjectVAlue = new Values();
            ProjectList = new List<ProjectProgram>();
            ProjectList.Add(new ProjectProgram());
            ProjectList.Add(new ProjectProgram());
            ProjectList.Add(new ProjectProgram());
            ProjectList.Add(new ProjectProgram());
        }

        public Client(string firstName, string lastName)
        {
            FirstName = firstName;
            LastName = lastName;
        }

        public override string ToString()
        {
            return string.Format("{0} {1}", FirstName, LastName);
        }
    }
}
