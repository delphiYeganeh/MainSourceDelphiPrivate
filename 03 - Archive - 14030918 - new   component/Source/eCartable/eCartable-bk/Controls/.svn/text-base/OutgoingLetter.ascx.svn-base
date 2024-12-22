<%@ Control Language="C#" AutoEventWireup="true" Inherits="Cartable.UI.Controls.OutgoingLetter"
    CodeFile="~/Controls/OutgoingLetter.ascx.cs" %>

<script language="jscript" type="text/jscript">
    function ToOrgChanged(cmbId,textboxId)
    {
        textboxId.value=cmbId.options[cmbId.selectedIndex].text;
    }
</script>

<div class="Container-chngpass">
    <div class="title-all-let">
        <div class="text-title-all-let">
            ثبت نامه</div>
    </div>
    <div class="top-chng-bg-let">
    </div>
    <div class="form-chng-let">
        <br />
        <table border="0" cellpadding="5" cellspacing="5" width="98%">
            <tr>
                <td align="right" class="font-inner-t">
                    شماره انديکاتور :
                </td>
                <td align="right" class="font-inner-t2">
                    <asp:Label runat="server" ID="lblIndicator"></asp:Label>
                </td>
                <td align="right" class="font-inner-t">
                    تاريخ ثبت :
                </td>
                <td align="right" class="font-inner-t2" dir="ltr">
                    <asp:Label runat="server" ID="lblRegistrationDate"></asp:Label>
                </td>
                <td align="right" class="font-inner-t">
                    ثبت کننده :
                </td>
                <td align="right" class="font-inner-t2">
                    <asp:Label runat="server" ID="lblUserName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center">
                    <asp:Panel CssClass="font-inner-bold" runat="server" GroupingText="متعلقات" ID="pnlDetails"
                        HorizontalAlign="Center">
                        <table width="100%" border="0">
                            <tr>
                                <td align="right" class="font-inner">
                                    فرستنده :
                                </td>
                                <td colspan="3" align="right">
                                    <asp:DropDownList runat="server" ID="cmbFromOrg" Width="235px">
                                    </asp:DropDownList>
                                    <asp:TextBox runat="server" ID="txtFromStaffer" Width="235px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    گیرنده :
                                </td>
                                <td colspan="3" align="right">
                                    <%--<asp:DropDownList runat="server" ID="cmbToOrg" Width="250px">
                                </asp:DropDownList>--%>
                                    <asp:TextBox runat="server" ID="txtToStaffer" Width="470px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    عطف :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtRetroactionNo"></asp:TextBox>
                                </td>
                                <td align="right" class="font-inner">
                                    پيرو :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtFollowLetterNo"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlMemo" GroupingText="مضمون نامه">
                        <asp:TextBox runat="server" ID="txtMemo" TextMode="MultiLine" Width="98%" Height="100px"></asp:TextBox>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlSpecs" Width="100%" GroupingText="ویژگیهای نامه">
                        <table width="100%">
                            <tr>
                                <td align="right" class="font-inner">
                                    طبقه بندی :
                                </td>
                                <td align="right">
                                    <asp:DropDownList runat="server" ID="cmbClassification" Width="125">
                                    </asp:DropDownList>
                                </td>
                                <td align="right" class="font-inner">
                                    نوع ارسال :
                                </td>
                                <td align="right" class="font-inner">
                                    <asp:DropDownList runat="server" ID="cmbRecieveType" Width="125">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    تعداد صفحه ها :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtPageCount" Width="118" Text="0"></asp:TextBox>
                                </td>
                                <td align="right" class="font-inner">
                                    فوریت نامه&nbsp;
                                </td>
                                <td align="right">
                                    <asp:DropDownList runat="server" ID="cmbUrgancy" Width="125">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlDescp" GroupingText="ملاحظات کاربري"
                        Width="100%">
                        <asp:TextBox runat="server" ID="txtUserMemo" Width="98%"></asp:TextBox>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:ImageButton runat="server" ID="btnOK" AlternateText="پذیرش" SkinID="btnOk" OnClick="btnOK_Click"
                        OnClientClick="confirmation()" />&nbsp;
                    <asp:ImageButton runat="server" ID="btnRecommite" AlternateText="ارجاع" SkinID="btnRecommite"
                        Visible="false" OnClick="btnRecommite_Click" />
                    <asp:ImageButton runat="server" ID="btnAttach" AlternateText="پیوست" SkinID="btnNewAttach"
                        Visible="false" OnClick="btnAttach_Click" />
                    <asp:ImageButton runat="server" ID="btnCancel" AlternateText="انصراف" SkinID="btnCancel"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div class="bot-chng-bg-let">
    </div>
</div>
