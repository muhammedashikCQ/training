using Microsoft.AspNetCore.Mvc;

namespace NewApiSolution.Model
{
    [ApiController]
    [Route("[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly IScopedService _scopedService;
        private readonly ITransientService _transientService;
        private readonly ISingletonService _singletonService;
        private readonly IScopedService _scopedService1;
        private readonly ITransientService _transientService1;
        private readonly ISingletonService _singletonService1;

        public HomeController(IScopedService scopedService,
            ITransientService transientService,
            ISingletonService singletonService,
            IScopedService scopedService1,
            ITransientService transientService1,
            ISingletonService singletonService1)
        {
            _scopedService = scopedService;
            _transientService = transientService;
            _singletonService = singletonService;
            _scopedService1 = scopedService1;
            _transientService1 = transientService1;
            _singletonService1 = singletonService1;
        }
        [HttpGet("scoped")]
        public string GetScopedName()
        {

            return _scopedService.GetId().ToString() + " : " + _scopedService1.GetId().ToString();
        }

        [HttpGet("transient")]
        public string GetTransientName()
        {

            return _transientService.GetId().ToString() + " : " + _transientService1.GetId().ToString();
        }

        [HttpGet("singleton")]
        public string GetSingletoname()
        {

            return _singletonService.GetId().ToString() + " : " + _singletonService1.GetId().ToString();
        }
    }


    public interface IScopedService
    {
        Guid GetId();
    }

    public interface ITransientService
    {
        Guid GetId();
    }

    public interface ISingletonService
    {
        Guid GetId();
    }

    public class ScopedService : IScopedService
    {
        private Guid _id;
        public ScopedService()
        {
            _id = Guid.NewGuid();

        }
        public Guid GetId()
        {
            return _id;
        }
    }

    public class TransientService : ITransientService
    {
        private Guid _id;
        public TransientService()
        {
            _id = Guid.NewGuid();

        }
        public Guid GetId()
        {
            return _id;
        }
    }

    public class SingletonService : ISingletonService
    {
        private Guid _id;
        public SingletonService()
        {
            _id = Guid.NewGuid();

        }
        public Guid GetId()
        {
            return _id;
        }
    }

}
