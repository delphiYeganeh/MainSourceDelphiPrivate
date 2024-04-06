using System;
using System.Data;
using System.Configuration;
using System.Web.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable
{
    [Serializable]
    public class CartableConfigSection : ConfigurationSection
    {
        #region Connection String

        [ConfigurationProperty("defaultConnectionStringName", DefaultValue = "LocalSqlServer")]
        public string DefaultConnectionStringName
        {
            get { return (string)base["defaultConnectionStringName"]; }
            set { base["defaultConnectionStringName"] = value; }
        }

        public string ConnectionString
        {
            get { return WebConfigurationManager.ConnectionStrings[DefaultConnectionStringName].ConnectionString; }
        }

        public string ConnectionProviderName
        {
            get { return WebConfigurationManager.ConnectionStrings[DefaultConnectionStringName].ProviderName; }
        }

        #endregion

        #region Exception Element

        //Defines Exception Element in Config Section
        [ConfigurationProperty("Exception", IsRequired = true)]
        public ExceptionElement exceptionElement
        {
            get { return (ExceptionElement)base["Exception"]; }
        }

        public class ExceptionElement : ConfigurationElement
        {
            [ConfigurationProperty("filePath", IsRequired = true)]
            public string FilePath
            {
                get { return HttpContext.Current.Server.MapPath((string)base["filePath"]); }
                set { base["filePath"] = value; }
            }
        }

        #endregion

        #region Providers Element
        //Defines <Providers> tag
        [ConfigurationProperty("Providers", IsRequired = true)]
        public DalProvidersCollection Providers
        {
            get { return (DalProvidersCollection)base["Providers"]; }
        }

        [ConfigurationCollection(typeof(DalProvidersCollection), CollectionType = ConfigurationElementCollectionType.BasicMap)]
        public class DalProvidersCollection : ConfigurationElementCollection
        {
            public DalProvidersCollection()
            {
                //BaseAdd((DalProviderElement)CreateNewElement(),false);
            }

            public override ConfigurationElementCollectionType CollectionType
            {
                get
                {
                    return ConfigurationElementCollectionType.BasicMap;
                }
            }

            protected override string ElementName
            {
                get
                {
                    return "DalProvider";
                }
            }

            protected override ConfigurationElement CreateNewElement()
            {
                return new DalProviderElement();
            }

            protected override object GetElementKey(ConfigurationElement element)
            {
                return ((DalProviderElement)element).Name;
            }

            public DalProviderElement this[int index]
            {
                get
                {
                    return (DalProviderElement)BaseGet(index);
                }
                set
                {
                    if (BaseGet(index) != null)
                    {
                        BaseRemoveAt(index);
                    }
                    BaseAdd(index, value);
                }
            }

            new public DalProviderElement this[string Name]
            {
                get
                {
                    return (DalProviderElement)BaseGet(Name);
                }
            }

            public int IndexOf(DalProviderElement DalProvoderElement)
            {
                return BaseIndexOf(DalProvoderElement);
            }

            protected override void BaseAdd(int index, ConfigurationElement element)
            {
                base.BaseAdd(index, element);
            }

            protected override void BaseAdd(ConfigurationElement element)
            {
                base.BaseAdd(element);
            }

        }

        public class DalProviderElement : ConfigurationElement
        {
            public DalProviderElement()
            {

            }
            //Defines 'name' Attribute for <DalProvider> 
            [ConfigurationProperty("name", IsRequired = true)]
            public string Name
            {
                get { return (string)base["name"]; }
            }

            [ConfigurationProperty("add", IsDefaultCollection = false)]
            public TypesElementCollection TypeItems
            {
                get { return (TypesElementCollection)base["add"]; }
            }
        }


        [ConfigurationCollection(typeof(TypesElementCollection), CollectionType = ConfigurationElementCollectionType.BasicMap)]
        public class TypesElementCollection : ConfigurationElementCollection
        {

            public TypesElementCollection()
            {
                //BaseAdd((TypeElement)CreateNewElement(), false);
            }

            public override ConfigurationElementCollectionType CollectionType
            {
                get
                {
                    return ConfigurationElementCollectionType.BasicMap;
                }
            }

            protected override string ElementName
            {
                get
                {
                    return "TypeItem";
                }
            }

            protected override ConfigurationElement CreateNewElement()
            {
                return new TypeElement();
            }

            protected override object GetElementKey(ConfigurationElement element)
            {
                return ((TypeElement)element).name;
            }

            public TypeElement this[int index]
            {
                get
                {
                    return (TypeElement)BaseGet(index);
                }
                set
                {
                    if (BaseGet(index) != null)
                    {
                        BaseRemoveAt(index);
                    }
                    BaseAdd(index, value);
                }
            }

            new public TypeElement this[string Name]
            {
                get
                {
                    return (TypeElement)BaseGet(Name);
                }
            }

            public int IndexOf(TypeElement typeElement)
            {
                return BaseIndexOf(typeElement);
            }

            protected override void BaseAdd(int index, ConfigurationElement element)
            {
                base.BaseAdd(index, element);
            }

            protected override void BaseAdd(ConfigurationElement element)
            {
                base.BaseAdd(element);
            }
        }

        public class TypeElement : ConfigurationElement
        {
            public TypeElement()
            {
            }

            [ConfigurationProperty("name", IsRequired = true)]
            public string name
            {
                get { return (string)base["name"]; }
            }

            [ConfigurationProperty("type", IsRequired = true)]
            public string type
            {
                get { return (string)base["type"]; }
            }
        }

        #endregion

        #region SiteMap

        public string SiteMapFile
        {
            get
            {
                SiteMapSection config = (SiteMapSection)WebConfigurationManager.GetWebApplicationSection("system.web/siteMap");
                return HttpContext.Current.Server.MapPath(config.Providers[config.DefaultProvider].Parameters["siteMapFile"]);
            }
        }

        #endregion
    }
}
