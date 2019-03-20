#include <boost/python.hpp>

char const* test()
{
  return "Hello,world!";
}

BOOST_PYTHON_MODULE(test)
{
  using namespace boost::python;
  def("test", test);
}