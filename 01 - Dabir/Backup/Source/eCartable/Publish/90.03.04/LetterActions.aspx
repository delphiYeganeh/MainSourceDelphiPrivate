<%@ page language="C#" autoeventwireup="true" inherits="Cartable.UI.LetterActions, App_Web_c2u5zo3l" masterpagefile="Horizontal.master" %>

<asp:Content runat="server" ContentPlaceHolderID="plcContent">
    <div style="width: 100%">
        <div class="menu-let">
            <asp:Menu ID="mnuTabStrip" Font-Size="0.8em" runat="server" Orientation="Horizontal"
                CssClass="menu-text-let" SkinID="mnuTabStrip" OnMenuItemClick="mnuTabStrip_MenuItemClick">
                <Items>
                    <asp:MenuItem></asp:MenuItem>
                    <asp:MenuItem></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle CssClass="menu-text-let-m" HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicHoverStyle CssClass="menu-text-let-h" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <StaticSelectedStyle CssClass="bh-meny-let" />
                <DynamicSelectedStyle CssClass="bh-meny-let" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticHoverStyle CssClass="menu-text-let-h" />
            </asp:Menu>
        </div>
        <div class="Container-chngpass">
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="viwAtachments" runat="server">
                    <div class="top-chng-bg-let">
                    </div>
                    <div class="form-chng-let">
                        <table border="0" width="98%" align="center">
                            <tr>
                                <td align="right" colspan="2">
                                    <div class="table-let">
                                        <div class="cont-chng-field">
                                            <div class="cont-chng">
                                                &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1601;&#1575;&#1610;&#1604; :
                                            </div>
                                            <div class="cont-chng-error">
                                                <asp:FileUpload CssClass="file-upload-field" runat="server" ID="filePage" />
                                            </div>
                                        </div>
                                        <div class="cont-chng-field">
                                            <div class="cont-chng">
                                                &#1578;&#1608;&#1590;&#1740;&#1581;&#1575;&#1578; :
                                            </div>
                                            <div class="cont-chng-error">
                                                <asp:TextBox runat="server" ID="txtDescription" />
                                            </div>
                                        </div>
                                        <div class="cont-chng-field">
                                            <div class="cont-chng-let">
                                                <asp:ImageButton runat="server" ID="btnNewAttach" SkinID="btnNewAttach" OnClick="btnNewAttach_Click"
                                                    ImageAlign="AbsMiddle" />
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    <asp:GridView runat="server" ID="grdAttachs" CellPadding="4" ForeColor="#333333"
                                        GridLines="None" AllowPaging="True" PageSize="5" AutoGenerateColumns="False"
                                        DataSourceID="odsAttachments" Width="95%" CssClass="gridView" AllowSorting="True"
                                        OnRowCommand="grdAttachs_RowCommand" 
                                        onselectedindexchanged="grdAttachs_SelectedIndexChanged">
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#e9f7fd" ForeColor="#333333" CssClass="gridRow" />
                                        <EditRowStyle BackColor="#999999" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" Font-Bold="True"
                                            Font-Size="Larger" />
                                        <HeaderStyle CssClass="head-letter-st" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField ItemStyle-Wrap="false">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" runat="server" SkinID="imgDelete" Width="15" CommandName="Delete" Visible='<%# ShowDeleteAttach() %>'
                                                        AlternateText="حذف پيوست" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "LetterDataId").ToString() %>'
                                                        OnClientClick="confirmation()" />
                                                    <a target="_blank" href='LoadImage.aspx?letterDataId=<%#DataBinder.Eval(Container.DataItem, "LetterDataId").ToString() %>'>
                                                        <asp:Image Width="12" ID="Image1" runat="server" SkinID="imgView" AlternateText="مشاهده" /></a>
                                                    <asp:ImageButton ID="btnPreview" runat="server" SkinID="imgPreview" CommandName="Preview"
                                                        AlternateText="پيش نمايش" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "LetterDataId").ToString() %>'
                                                        Visible='<%# (DataBinder.Eval(Container.DataItem, "ExtentionType").ToString() == "jpg") ? true : false %>' />
                                                </ItemTemplate>
                                                <ItemStyle Wrap="False" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="PageNumber" HeaderText="شماره صفحه" />
                                            <asp:BoundField DataField="ExtentionType" HeaderText="نوع" />
                                            <%--<asp:BoundField DataField="LastUpdate" HeaderText="آخرين تغییر" />
                                            <asp:BoundField DataField="Description" HeaderText="توضيحات" />--%>

                                        </Columns>
                                        <PagerSettings Mode="NumericFirstLast" />
                                    </asp:GridView>
                                </td>
                                <td align="center" valign="top">
                                    <asp:Image runat="server" ID="imgAttach" Width="500" Visible="false" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:ImageButton runat="server" ID="btnCloseAttachs" AlternateText="انصراف" SkinID="btnCancel"
                                        OnClick="btnReturn_Click" /></td>
                            </tr>
                        </table>
                    </div>
                    <asp:ObjectDataSource runat="server" ID="odsAttachments" SelectMethod="GetAllAttachmentByLetterId"
                        TypeName="Cartable.Bll.Letters.Attachment" DeleteMethod="DeleteAttachment">
                        <SelectParameters>
                            <asp:Parameter Name="id" Type="Int32" DefaultValue="0" />
                            <asp:Parameter Name="sortExpression" Type="String" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                    </asp:ObjectDataSource>
                    <div class="bot-chng-bg-let">
                    </div>
                </asp:View>
                <asp:View ID="viwRecommites" runat="server">
                    <div class="top-chng-bg-let">
                    </div>
                    <div class="form-chng-let">
                        <table width="98%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td align="right" valign="top">
                                    <asp:TreeView CssClass="text-list-right" runat="server" ID="trvRecommites" SkinID="trvRecommites"
                                        ExpandDepth="3" OnSelectedNodeChanged="trvRecommites_SelectedNodeChanged">
                                    </asp:TreeView>
                                </td>
                                <td>
                                    <div class="let-table">
                                        <div class="cont-chng-field">
                                            <div class="cont-chng">
                                                &#1578;&#1575;&#1585;&#1610;&#1582; :
                                            </div>
                                            <div class="cont-chng-error">
                                                <asp:TextBox runat="server" ID="txtRecommiteDate" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="cont-chng-field-let">
                                            <div class="cont-chng">
                                                <asp:CheckBox runat="server" ID="chkReadOnly" Text="&#1601;&#1602;&#1591; &#1582;&#1608;&#1575;&#1606;&#1583;&#1606;&#1610;" />
                                            </div>
                                            <div class="cont-chng">
                                                <asp:CheckBox runat="server" ID="chkProceeded" Text="&#1576;&#1575;&#1610;&#1711;&#1575;&#1606;&#1610; &#1588;&#1583;&#1607;" />
                                            </div>
                                        </div>
                                        <div class="cont-chng-field">
                                            <div class="cont-chng">
                                                &#1605;&#1590;&#1605;&#1608;&#1606; :
                                            </div>
                                            <div class="cont-chng-error">
                                                <asp:TextBox runat="server" ID="txtParaph" ReadOnly="true" TextMode="MultiLine" Height="50"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                        </table>
                        <br />
                        <asp:ImageButton runat="server" ID="btnCloseRecommites" AlternateText="&#1576;&#1575;&#1586;&#1711;&#1588;&#1578;"
                            SkinID="btnCancel" OnClick="btnReturn_Click" />
                        <asp:ObjectDataSource runat="server" ID="odsRecommites" SelectMethod="GetLetterRecommites"
                            TypeName="Cartable.Bll.Letters.Recommite">
                            <SelectParameters>
                                <asp:Parameter Name="letterId" Type="Int32" />
                                <asp:Parameter Name="type" Type="Byte" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <br />
                    </div>
                    <div class="bot-chng-bg-let">
                    </div>
                </asp:View>
                <asp:View ID="viwDetails" runat="server">
                </asp:View>
                <asp:View ID="viwArchive" runat="server">
                    <div class="top-chng-bg-let">
                    </div>
                    <div class="form-chng-let">
                        <br />
                        <div class="arch-table-don">
                            <div class="don-1">
                                <asp:TreeView CssClass="text-list-right" runat="server" ID="trvArchiveFolder" ExpandDepth="3">
                                    <SelectedNodeStyle CssClass="text-list-right" />
                                    <NodeStyle CssClass="text-list-right" ImageUrl="~/App_Themes/Default/Images/Cartable-small.gif" />
                                </asp:TreeView>
                            </div>
                            <div class="border-arch-don">
                            </div>
                            <div class="don-textbox">
                                <asp:TextBox runat="server" ID="txtArchiveNote" TextMode="MultiLine" Height="100"
                                    Width="100%"></asp:TextBox></div>
                            <div class="cont-chng-field-don">
                                <asp:ImageButton runat="server" ID="btnArchiveLetter" SkinID="btnOK" OnClick="btnArchiveLetter_Click"
                                    OnClientClick="confirmation()" style="height: 16px" />
                                <asp:ImageButton runat="server" ID="btnCancelArchive" SkinID="btnCancel" AlternateText="&#1576;&#1575;&#1586;&#1711;&#1588;&#1578;"
                                    OnClick="btnReturn_Click" />
                            </div>
                        </div>
                        <br />
                    </div>
                    <div class="bot-chng-bg-let">
                    </div>
                </asp:View>
                <asp:View runat="server" ID="viwArchiveHistory">
                    <div class="top-chng-bg-let">
                    </div>
                    <div class="form-chng-let">
                        <br />
                        <table width="94%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td align="right" valign="top">
                                    <asp:GridView runat="server" ID="grdArchiveHistory" CellPadding="4" ForeColor="#333333"
                                        GridLines="None" AllowPaging="True" PageSize="5" AutoGenerateColumns="False"
                                        Width="100%" CssClass="gridView" AllowSorting="True">
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" CssClass="gridRow" />
                                        <EditRowStyle BackColor="#999999" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" Font-Bold="True"
                                            Font-Size="Larger" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="Title" HeaderText="&#1593;&#1606;&#1608;&#1575;&#1606;" />
                                            <asp:BoundField DataField="Place" HeaderText="&#1605;&#1705;&#1575;&#1606;" />
                                            <asp:BoundField DataField="ArchiveDate" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1576;&#1575;&#1610;&#1711;&#1575;&#1606;&#1610;" />
                                        </Columns>
                                    </asp:GridView>
                                    <div class="error-don">
                                        <asp:Label CssClass="error-don" runat="server" ID="lblHistoryMessage"></asp:Label></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="bot-chng-bg-let">
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <!--<asp:ImageButton runat="server" ID="btnReturn" OnClick="btnReturn_Click" SkinID="btnCancel" />-->
    </div>
</asp:Content>
