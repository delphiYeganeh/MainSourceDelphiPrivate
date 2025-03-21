﻿<%@ page language="C#" autoeventwireup="true" inherits="Cartable.UI.Default, App_Web_c2u5zo3l" masterpagefile="Horizontal.master" %>

<asp:Content ID="plhContent" ContentPlaceHolderID="plcContent" runat="server">

    <script language="javascript" type="text/javascript">
        
        var panels="";
        var arrPanels = new Array();
        
               
        function initPage()
        {
            OpenMenu(document.getElementById('openSearch'),document.getElementById('closeSearch'),'<%= pnlSearch.ClientID %>');
            //CloseMenu(document.getElementById('closeSecretaries'),document.getElementById('openSecretaries'),'<%= pnlSecretaries.ClientID %>');
            CloseMenu(document.getElementById('closeArchiveFolder'),document.getElementById('openArchiveFolder'),'<%= pnlArchiveFolder.ClientID %>');
//            CloseMenu(document.getElementById('closeOrgChart'),document.getElementById('openOrgChart'),'<%= pnlOrgChart.ClientID %>');
//            CloseMenu(document.getElementById('closeDeadline'),document.getElementById('openDeadline'),'<%= pnlDeadline.ClientID %>');
//            CloseMenu(document.getElementById('closeOutputs'),document.getElementById('openOutputs'),'<%= pnlOutputs.ClientID %>');
        }
       
        function findIteminArray(array ,value)
        {
            for (i=0;i<array.length;i++)
            {
                if (array[i].indexOf(value,0)>=0)
                {
                    return i;
                }
            }
        }
        
        function OpenMenu(sender,next,target)
        {
            sender.style.visibility = "hidden";
            sender.style.width = "0";
            sender.style.height = "0";
//            sender.nextSibling.nextSibling.style.visibility = "visible";
//            sender.nextSibling.nextSibling.style.width = 14;
            next.style.visibility = "visible";
            next.style.width = 14;
            if (panels != "")
            {
                arrPanels = panels.split(",");
                index = findIteminArray(arrPanels,target);
                height = arrPanels[index].split(':')[1];   
                var timerId = setTimeout("incHeight('" + target + "',0," + height + ",1)",1);
            }
        }
        
        function CloseMenu(sender,next,target)
        {            
            sender.style.visibility = "hidden";
            sender.style.width = "0";
            sender.style.height = "0";
            next.style.visibility = "visible";
            next.style.width = 14;
            var offset = document.getElementById(target).offsetHeight;
            panels = panels + target + ":" + offset + ",";
            alert(document.getElementById(target).id);
            alert(panels);
            var timerId = setTimeout("decHeight('" + target + "'," + offset + ",1)",1);
        }
        
        function decHeight(target,height,delay)
        {
            //var oTarget = eval(target);   
            var dec=50;
            //alert('input : ' + height);
            //alert(document.getElementById(target).style.marginTop)
            //document.getElementById(target).style.marginTop = -height;
            if (height>0 & height <100)
            {
                dec=50;
            }
            if (height>100 & height <250)
            {
                dec=100;
            }
            if (height>250 & height <500)
            {
                dec=150;
            }
            if (height>500)
            {
                dec=250;
            }
            height=height-dec;
            if (height >0)
            {
                id = setTimeout(function(){decHeight(target , height,delay)},delay);
            }
            else
            {
                document.getElementById(target).style.height = 0;
                return;
            }
        }
        
        function incHeight(target,height,maxHeight,delay)
        {
            //var oTarget = eval(target);
            var inc;
            document.getElementById(target).style.height = height;
            
            if (maxHeight>0 & maxHeight <100)
            {
                inc=50;
            }
            if (maxHeight>100 & maxHeight <250)
            {
                inc=100;
            }
            if (maxHeight>250 & maxHeight <500)
            {
                inc=150;
            }
            if (maxHeight>500)
            {
                inc=250;
            }
            height=height+inc;
            if (height < maxHeight)
            {
                id = setTimeout(function(){incHeight(target, height ,maxHeight ,delay)},delay);
            }
            else
            {
                document.getElementById(target).style.height = maxHeight;
                return;
            }
        }
    </script>

    <table align="center" border="0" dir="rtl" width="986">
        <tr>
            <td valign="top" class="right">
                <table cellpadding="1" cellspacing="0" border="0">
                    <tr>
                        <td>
                            <div class="all-top-but">
                                <div class="combobox-right">
                                    <asp:DropDownList runat="server" ID="cmbType" CssClass="textbox">
                                        <asp:ListItem Text="همه نامه ها" Selected="True" Value="0" />
                                        <asp:ListItem Text="ارجاعات" Value="3" />
                                        <asp:ListItem Text="رونوشت ها" Value="1" />
                                    </asp:DropDownList>
                                </div>
                                <div class="home-button-refresh">
                                    <asp:ImageButton runat="server" ID="btnChangeType" SkinID="btnDo" OnClick="btnChangeType_Click" />
                                    <asp:ImageButton runat="server" ID="btnReset" SkinID="btnReset" AlternateText="تمامی نامه ها"
                                        OnClick="btnReset_Click" /></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    جستجو</div>
                                <div class="arr-up">
                                    <%--<div onclick="OpenMenu(this,'<%= pnlSearch.ClientID %>')" id="openSearch">
                                        <asp:Image runat="server" ID="btnOpenSer" SkinID="btnMaximize" TabIndex="2" ImageAlign="Top" />
                                    </div>
                                    <div onclick="CloseMenu(this,'<%= pnlSearch.ClientID %>')" id="closeSearch">
                                        <asp:Image runat="server" ID="btnCloseSer" SkinID="btnMinimize" TabIndex="3" ImageAlign="Top" />
                                    </div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlSearch" Visible="true" CssClass="panels">
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <div class="text-content-right">
                                            شماره نامه :
                                        </div>
                                        <div class="textbox-content-right">
                                            <asp:TextBox CssClass="textBox" runat="server" ID="txtLetterId"></asp:TextBox>
                                        </div>
                                        <div class="text-content-right">
                                            تاریخ نامه :
                                        </div>
                                        <div class="textbox-content-right">
                                            <asp:TextBox CssClass="textBox" runat="server" ID="txtLetterDate" dir="ltr"></asp:TextBox>
                                        </div>
                                        <div class="text-content-right">
                                            مضمون، فرستنده و ملاحظات نامه :</div>
                                        <div class="textbox-content-right">
                                            <asp:TextBox CssClass="textBox" runat="server" ID="txtMemo"></asp:TextBox>
                                        </div>
                                        <div class="button-content-right">
                                            <asp:ImageButton CssClass="button" runat="server" ID="btnSearch" OnClick="btnSearch_Click"
                                                SkinID="btnSearch" TabIndex="1" />
                                            <div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    فهرست دبیرخانه ها</div>
                                <div class="arr-up">
                                    <%--<div onclick="OpenMenu(this,'<%= pnlSecretaries.ClientID %>')" id="openSecretaries">
                                        <asp:Image runat="server" ID="btnOpenSec" SkinID="btnMaximize" TabIndex="4" />
                                    </div>
                                    <div onclick="CloseMenu(this,'<%= pnlSecretaries.ClientID %>')" id="closeSecretaries">
                                        <asp:Image runat="server" ID="btnCloseSec" SkinID="btnMinimize" TabIndex="5" />
                                    </div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlSecretaries" Visible="True" CssClass="panels">
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <asp:TreeView runat="server" ID="trvConstruct" OnSelectedNodeChanged="trvConstruct_SelectedNodeChanged">
                                            <SelectedNodeStyle CssClass="text-list-right-selected" />
                                            <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                                        </asp:TreeView>
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    بایگانی</div>
                                <div class="arr-up">
                                    <%--<div onclick="OpenMenu(this,'<%= pnlArchiveFolder.ClientID %>')" id="openArchiveFolder">
                                        <asp:Image runat="server" ID="btnOpenArch" SkinID="btnMaximize" />
                                    </div><div onclick="CloseMenu(this,'<%= pnlArchiveFolder.ClientID %>')" id="closeArchiveFolder">
                                        <asp:Image runat="server" ID="btnCloseArch" SkinID="btnMinimize" />
                                    </div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlArchiveFolder" CssClass="panels">
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <asp:TreeView CssClass="text-list-right" runat="server" ID="trvArchiveFolder" ExpandDepth="1" OnSelectedNodeChanged="trvArchiveFolder_SelectedNodeChanged">
                                            <SelectedNodeStyle CssClass="text-list-right" />
                                            <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                                        </asp:TreeView>
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    نمودار سازمانی</div>
                                <div class="arr-up">
                                    <%--<div onclick="OpenMenu(this,'<%= pnlOrgChart.ClientID %>')" id="openOrgChart">
                                        <asp:Image runat="server" ID="btnOpenChart" SkinID="btnMaximize" TabIndex="7" />
                                    </div><div onclick="CloseMenu(this,'<%= pnlOrgChart.ClientID %>')" id="closeOrgChart">
                                        <asp:Image runat="server" ID="btnCloseChart" SkinID="btnMinimize" TabIndex="8" />
                                    </div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlOrgChart" CssClass="panels">
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <asp:TreeView CssClass="text-list-right" runat="server" ID="trvOrgChart" ExpandDepth="1" OnSelectedNodeChanged="trvOrgChart_SelectedNodeChanged">
                                            <SelectedNodeStyle CssClass="text-list-right" />
                                            <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                                        </asp:TreeView>
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    مهلت اقدام</div>
                                <div class="arr-up">
                                    <%--<div onclick="OpenMenu(this,'<%= pnlDeadline.ClientID %>')" id="openDeadline">
                                        <asp:Image runat="server" ID="btnOpenDeadline" SkinID="btnMaximize" TabIndex="7" />
                                    </div><div onclick="CloseMenu(this,'<%= pnlDeadline.ClientID %>')" id="closeDeadline">
                                        <asp:Image runat="server" ID="btnCloseDeadline" SkinID="btnMinimize" TabIndex="8"
                                            />--%>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlDeadline" CssClass="panels"><%--CssClass="text-list-right"--%>
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <asp:TreeView CssClass="text-list-right" runat="server" ID="trvDeadline" OnSelectedNodeChanged="trvDeadline_SelectedNodeChanged">
                                            <Nodes>
                                                <asp:TreeNode Text="همه موارد" Value="-2" Selected="true" />
                                                <asp:TreeNode Text="نامه های عقب افتاده" Value="-1" />
                                                <asp:TreeNode Text="تا امروز" Value="0" />
                                                <asp:TreeNode Text="تا فردا" Value="1" />
                                                <asp:TreeNode Text="تا آخر هفته" Value="3" />
                                            </Nodes>
                                            <SelectedNodeStyle CssClass="text-list-right" />
                                            <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                                        </asp:TreeView>
                                        <br />
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="title">
                                <div class="title-font">
                                    گزینش ستونها</div>
                                <div class="arr-up">
                                   <%-- <div onclick="OpenMenu(this,'<%= pnlOutputs.ClientID %>')" id="openOutputs">
                                        <asp:Image runat="server" ID="btnOpenOutputs" SkinID="btnMaximize" TabIndex="10" />
                                    </div><div onclick="CloseMenu(this,'<%= pnlOutputs.ClientID %>')" id="closeOutputs">
                                        <asp:Image runat="server" ID="btnCloseOutputs" SkinID="btnMinimize" TabIndex="11" />
                                    </div>--%>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlOutputs" CssClass="panels">
                                <div class="content-right">
                                    <div class="t1-content--right">
                                    </div>
                                    <div class="border-content-right">
                                        <asp:CheckBoxList ID="lstGridOutput" runat="server" CssClass="text-list-right-last"
                                            Width="90%">
                                            <asp:ListItem Value="IndicatorID" Selected="True">شماره اندیکاتور </asp:ListItem>
                                            <asp:ListItem Value="IncommingDate" Selected="True">تاریخ وارده </asp:ListItem>
                                            <asp:ListItem Value="IncommingNO" Selected="True">شماره وارده</asp:ListItem>
                                            <asp:ListItem Value="RegistrationDate" Selected="True">تاریخ ثبت</asp:ListItem>
                                            <asp:ListItem Value="Memo" Selected="True">مضمون</asp:ListItem>
                                            <asp:ListItem Value="RecommiteDate" Selected="True">تاریخ ارجاع</asp:ListItem>
                                            <asp:ListItem Value="RecommiterTitle" Selected="True">ارجاع دهنده</asp:ListItem>
                                            <asp:ListItem Value="Paraph" Selected="True">متن ارجاع</asp:ListItem>
                                            <asp:ListItem Value="CenterNo">شماره نامه دبیرخانه مرکزی</asp:ListItem>
                                            <asp:ListItem Value="CenterDate">تاریخ دبیرخانه مرکزی</asp:ListItem>
                                            <asp:ListItem Value="AttachTitle">عنوان پیوست</asp:ListItem>
                                            <asp:ListItem Value="RetroactionNo">شماره عطف</asp:ListItem>
                                            <asp:ListItem Value="UserMemo">توضیحات کاربری</asp:ListItem>
                                            <asp:ListItem Value="RegistrationTime">زمان ثبت</asp:ListItem>
                                            <asp:ListItem Value="FollowLetterNo">شماره پیرو</asp:ListItem>
                                            <asp:ListItem Value="InnerNo">شماره داخلی نامه</asp:ListItem>
                                            <asp:ListItem Value="sendertitle">فرستنده نامه</asp:ListItem>
                                            <asp:ListItem Value="ViewDate">تاریخ دیدن</asp:ListItem>
                                        </asp:CheckBoxList>
                                        <div class="button-content-right">
                                            <asp:ImageButton runat="server" ID="btnApplyOutput" SkinID="btnOk" OnClick="btnApplyOutput_Click"
                                                TabIndex="9" /></div>
                                    </div>
                                    <div class="t2-content--right">
                                    </div>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="main">
                <div id="divToolbar">
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton runat="server" ID="btnDraft" AlternateText="ثبت پيش نوِیس" SkinID="btnDraft"
                                    OnClick="btnDraft_Click" />
                            </td>
                            <td>
                                <asp:ImageButton runat="server" ID="btnInnerLetter" AlternateText="ثبت نامه داخلی"
                                    SkinID="btnInnerLetter" OnClick="btnInnerLetter_Click" />
                            </td>
                            <td>
                                <asp:ImageButton runat="server" ID="btnSentLetter" AlternateText="ثبت نامه صادره"
                                    SkinID="btnSentLetter" OnClick="btnSentLetter_Click" />
                            </td>
                            <td>
                                <asp:ImageButton runat="server" ID="btnReceivedLetter" AlternateText="ثبت نامه وارده"
                                    SkinID="btnReceivedLetter" OnClick="btnReceivedLetter_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="divGrid">
                    <asp:GridView runat="server" ID="grdInbox" CellPadding="4" ForeColor="#13426c" GridLines="None"
                        AllowPaging="True" PageSize="15" AutoGenerateColumns="False" DataSourceID="dsInbox"
                        CssClass="gridView" AllowSorting="True" OnRowCommand="grdInbox_RowCommand" OnRowDataBound="grdInbox_RowDataBound">
                        <FooterStyle />
                        <RowStyle CssClass="gridRow" />
                        <EditRowStyle />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#13426c" />
                        <PagerStyle CssClass="footer-main-st" />
                        <HeaderStyle CssClass="header-main-st" />
                        <AlternatingRowStyle CssClass="gridRowAlt" Wrap="false" />
                        <RowStyle Wrap="false" />
                        <EmptyDataTemplate>
                            <span class="message">هيچ نامه اي برای نمایش وجود ندارد. </span>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgAttach" SkinID="imgAttach" CommandName="ViewAttach"
                                                    AlternateText="پیوست ها" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "LetterId")+ "-" + DataBinder.Eval(Container.DataItem, "RecommiteId") %>'
                                                    Visible='<%# LetterHasAttachment(DataBinder.Eval(Container.DataItem, "LetterId").ToString()) %>' />
                                            </td>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgInfo" SkinID="imgInfo" CommandName="ViewInfo"
                                                    AlternateText="داده هاي بيشتر" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "LetterId") + "-" + DataBinder.Eval(Container.DataItem, "RecommiteId") %>' />
                                            </td>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgRecommite" SkinID="imgRecommite" CommandName="Recommite"
                                                    Visible='<%# !Convert.ToBoolean(DataBinder.Eval(Container.DataItem, "Proceeded")) %>'
                                                    AlternateText="ارجاع" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "RecommiteId")%>' />
                                            </td>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgActivate" SkinID="imgActivate" CommandName="Activate"
                                                    Visible='<%# Convert.ToBoolean(DataBinder.Eval(Container.DataItem, "Proceeded")) %>'
                                                    AlternateText="فعال کردن" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "RecommiteId") %>' />
                                            </td>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgSendDraft" SkinID="imgSendDraft" AlternateText="فرستادن پيش نوِیس به دبیرخانه"
                                                    CommandName="SendDraft" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "LetterId") %>'
                                                    Visible='<%# DataBinder.Eval(Container.DataItem, "LetterFormat").ToString()=="2" ? true : false %>' />
                                            </td>
                                            <td>
                                                <asp:ImageButton runat="server" ID="imgAnswer" SkinID="imgAnswer" AlternateText="جواب"
                                                    CommandName="Answer" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "LetterId") %>'
                                                    Visible='<%# DataBinder.Eval(Container.DataItem, "LetterType").ToString()=="1" ? true : false %>' />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" />
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
    <asp:ObjectDataSource ID="dsInbox" runat="server" SelectMethod="GetInbox" SortParameterName="sortExpression"
        TypeName="Cartable.BLL.Letters.Inbox">
        <SelectParameters>
            <asp:Parameter Name="secretariatID" Type="Int32" />
            <asp:Parameter Name="letterFormat" Type="Byte" DefaultValue="1" />
            <asp:Parameter Name="orgID" Type="Int32" />
            <asp:Parameter Name="proceeded" Type="Boolean" DefaultValue="false" />
            <asp:Parameter Name="type" Type="Byte" DefaultValue="0" />
            <asp:Parameter Name="mYear" Type="Byte" DefaultValue="86" />
            <asp:Parameter Name="date" Type="Byte" DefaultValue="0" />
            <asp:Parameter Name="archiveFolderID" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="where" Type="String" DefaultValue="" />
            <asp:Parameter Name="userID" Type="Int32" />
            <asp:Parameter Name="letterType" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="deadLine" Type="Int32" DefaultValue="-2" />
            <asp:Parameter Name="sortExpression" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

    <script language="jscript" type="text/jscript">
       // initPage();
    </script>

</asp:Content>
