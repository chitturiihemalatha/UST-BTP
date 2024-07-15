using{ ust.reuse as reuse } from './reuse';
using { cuid, managed, temporal } from '@sap/cds/common';
namespace ust.hema;
context master{
    entity student: reuse.address{
       key id: reuse.Guid;
       firstName: String(30);
       lastName: String(30);
       age:Integer;
       class:Association to semester


    }
    entity semester{
        key id: reuse.Guid;
        name: String(30);
        Special: String(30); 
    }
    entity books{
        key code : String(32);
        name: localized String(80);
        author: String(44);

    }
}
context transaction{
   
    entity subs : cuid, managed, temporal{
        student: Association to one master.student;
        book: Association to one master.books;
    }
}