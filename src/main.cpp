#include <iostream>

#include <qapplication.h>
#include <qpushbutton.h>

int main(int argc, char *argv[]) {
  std::cout << "Hello Project Template!" << "\n";

  try {
    QApplication a(argc, argv);
    QPushButton hello("Hello world!", 0);
    hello.resize(100, 30);

    hello.show();
    return a.exec();

  } catch (...) {
    std::cout << "Exception at Qt" << std::endl;
  }

  return 0;
}
