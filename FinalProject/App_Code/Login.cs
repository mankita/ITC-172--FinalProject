using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Login
{
    public int LoginPerson(string email, string password)
    {
        Community_AssistEntities db = new Community_AssistEntities();
        int success = db.usp_Login(email, password);
        return success;
    }

    public int GetPersonKey(string email)
    {
        Community_AssistEntities db = new Community_AssistEntities();
        var uKey = (from eachEntry in db.People where eachEntry.PersonEmail.Equals(email) select eachEntry.PersonKey).FirstOrDefault();
        return (int)uKey;
    }

    public void RegisterPerson(string lastName, string firstName, string email, string password, 
        string apartmentNumber, string street, string city, string state, string zipCode, 
        string homePhone, string workPhone)
    {
        int success = GetPersonKey(email);
        if (success == 0)
        {
            Community_AssistEntities db = new Community_AssistEntities();
            db.usp_Register(lastName, firstName, email, password, apartmentNumber, street, city, state, zipCode, homePhone, workPhone);
        }
    }

}