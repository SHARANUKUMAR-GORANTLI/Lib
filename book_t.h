#pragma once
struct _book_t{
 int bookId;
 int bookISBN;
 char author[256];
 char bookTitle[256];
 char publication[256];
 int numOfCopies;
 double price;
};
typedef struct _book_t book_t;
