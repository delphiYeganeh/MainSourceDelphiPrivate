<%@ page language="C#" masterpagefile="Horizontal.master" autoeventwireup="true" inherits="Cartable.UI.ArchiveFolder" CodeFile="ArchiveFolder.aspx.cs" title="اتوماسيون اداري يگانه - پرونده هاي شخصي" %>

<asp:Content ID="Content1" ContentPlaceHolderID="plcContent" runat="Server">
<div class="Container-chngpass">
<div class="title-all">
<div class="text-title-all">پرونده های بایگانی</div>
</div>
	<div class="top-chng-bg">
	</div>

    <div class="form-chng">
        <div class="arch-table">  
             <div class="arch-doc">
                <asp:TreeView CssClass="text-list-right"  runat="server" ID="trvArchiveFolder" ExpandDepth="3" OnSelectedNodeChanged="trvArchiveFolder_SelectedNodeChanged">
                    <SelectedNodeStyle  CssClass="text-list-right"  />
                    <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                </asp:TreeView>
      
        </div><div class="arch-border-main">
               <div class="border-arch"></div>     </div>  
                  <div class="cont-chng-field">

                        <div class="cont-chng">
                            <asp:Label runat="server" Text="عنوان :" ID="Label1" CssClass="label"></asp:Label></div>
                        <div  class="cont-chng-error" >
                            <asp:TextBox runat="server" ID="txtTitle"></asp:TextBox><asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtTitle"
                                Display="Dynamic"></asp:RequiredFieldValidator></div>
                   </div>
                      <div class="cont-chng-field">
                         <div class="cont-chng">
                            <asp:Label runat="server" Text="مکان :" ID="Label2" CssClass="label"></asp:Label></div>
                               <div  class="cont-chng-error" >
                            <asp:TextBox runat="server" ID="txtPlace"></asp:TextBox></div>
                    </div>
                  <div class="cont-chng-field">
                       <div class="cont-chng">
                            <asp:Label runat="server" Text="توضيح :" ID="Label3" CssClass="label"></asp:Label></div>
                       <div  class="cont-chng-error" >
                            <asp:TextBox runat="server" ID="txtNotes" ></asp:TextBox></div>
                    </div> <div class="cont-chng-field">
                     <div>
                <asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label>
            </div>  </div>
             <div class="cont-chng-field">
                <asp:ImageButton runat="server" ID="btnNewFolder" SkinID="btnNewFolder" AlternateText="زونکن جدید"
                    BorderWidth="0" OnClick="btnNewFolder_Click" />
                <asp:ImageButton runat="server" ID="btnEditFolder" SkinID="btnEditFolder" AlternateText="ويرايش زونکن"
                    BorderWidth="0" OnClientClick="confirmation()" OnClick="btnEditFolder_Click" />
                <asp:ImageButton runat="server" ID="btnDeleteFolder" SkinID="btnDeleteFolder" AlternateText="حذف زونکن"
                    BorderWidth="0" OnClick="btnDeleteFolder_Click" OnClientClick="confirmation()" />
                <asp:ImageButton runat="server" ID="btnCancelArchive" SkinID="btnCancel" AlternateText="انصراف"
                    BorderWidth="0" OnClick="btnCancelArchive_Click"/>
            </div>
               </div>
        
 
           
     
       
    </div>
    <div class="bot-chng-bg">
	</div>

    </div>
</asp:Content>
