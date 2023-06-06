List<Contact> lcon = new List<Contact>();

Contact c1 = new Contact();
c1.LastName = 'contact trigger 1';
lcon.add(c1);

Contact c2 = new Contact();
c2.LastName = 'contact trigger 2';
lcon.add(c2);

insert lcon; // one DML record with a list fires trigger once.

// - Before trigger
//   - validation
//   - update



