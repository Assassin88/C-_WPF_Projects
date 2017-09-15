using System.Collections.ObjectModel;
using System.Collections.Generic;
using MVVMLight_Sample.Helper;
using MVVMLight_Sample.Helper.JSONClasses;

namespace MVVMLight_Sample.Model
{
    public static class ClientRepository
    {
        private static ObservableCollection<Client> _clients;

        public static ObservableCollection<Client> AllClients 
        {
            get 
            {
                if (_clients == null)
                    _clients = GenerateClientRepository();
                return _clients;
            }
        }

        private static ObservableCollection<Client> GenerateClientRepository()
        {
            ObservableCollection<Client> clients = new ObservableCollection<Client>();

            Rootobject rObj = RandomUserHelper.GetUsers();
            foreach (var item in rObj.results)
            {
                Client clientNew = new Client()
                {
                    FirstName = item.name.first,
                    LastName = item.name.last,
                    Email = item.email,
                    Phone = item.phone,
                    Image = item.picture.large,
                    Id = item.id.value
                };
                clients.Add(clientNew);
            }
            return clients;
        }


    }
}
