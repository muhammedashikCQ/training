using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RepositoryPattern
{
    public interface IRepositoryPattern
    {
        int Add(Customer customer);
        int Update(Customer customer);
        Customer Get(int id);
        List
    }
    public class CustomerRepository:IRepositoryPattern
    {
        public Customer Get(int id)
        {
           throw new NotImplementedException();
        }
    }
}
