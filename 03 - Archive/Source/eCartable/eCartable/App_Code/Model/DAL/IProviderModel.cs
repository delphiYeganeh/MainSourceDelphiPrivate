using System;
using System.Collections.Generic;
using System.Text;

namespace Cartable.Model.Dal
{
    //ObjectType is type of the Provider and IDType is type of Identity field of ObjectType
    interface IProviderModel<ObjectType, IDType>
    {
        #region Properties

        string TableName
        {
            get;
        }

        string SortExperssion
        {
            get;
            set;
        }

        #endregion

        #region Methods

        //use this method to add a new item.
        bool Add(ObjectType item);

        //use this method to update an existing item.
        bool Update(ObjectType item);

        //use this method to delete an item.
        bool Delete(ObjectType item);

        //use this method to delete an item.
        //bool Delete(IDType Id);
         

        //Returns an item by getting ID of that item.
        ObjectType GetItemById(IDType Id);

        //use this method to compare items.
        //static int Compare(ObjectType x, ObjectType y);

        #endregion
    }
}
