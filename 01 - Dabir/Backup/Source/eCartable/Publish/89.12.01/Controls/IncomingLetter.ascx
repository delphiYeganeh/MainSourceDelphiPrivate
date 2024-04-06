<%@ control language="C#" autoeventwireup="true" inherits="Cartable.UI.Controls.IncomingLetter, App_Web_5g5rf4sd" %>

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
                            <tr runat="server" id="trLetterNo">
                                <td align="right" class="font-inner">
                                    شماره نامه :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtIncommingNo" ></asp:TextBox>
                                </td>
                                <td align="right" class="font-inner">
                                    تاريخ :
                                </td>
                                <td align="right" dir="ltr">
                                    <asp:TextBox runat="server" ID="txtIncommingDate" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    فرستنده :
                                </td>
                                <td colspan="3" align="right">
                                    <%--<asp:DropDownList runat="server" ID="cmbToOrg" Width="346px" Enabled="false">
                                </asp:DropDownList>--%>
                                    <asp:TextBox runat="server" ID="txtToStaffer" Width="468px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    گیرنده :
                                </td>
                                <td colspan="3" align="right">
                                    <asp:DropDownList runat="server" ID="cmbFromOrg" Width="232px">
                                    </asp:DropDownList>
                                    <asp:TextBox runat="server" ID="txtFromStaffer" Width="232px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="font-inner">
                                    عطف :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtRetroactionNo" ></asp:TextBox>
                                </td>
                                <td align="right" class="font-inner">
                                    پيرو :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtFollowLetterNo" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6" align="right">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlMemo" GroupingText="مضمون نامه">
                        <asp:TextBox runat="server" ID="txtMemo" TextMode="MultiLine" Width="98%" Height="100px"></asp:TextBox>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlCenter" GroupingText="دبیرخانه مرکزی"
                        Width="100%">
                        <table width="100%">
                            <tr>
                                <td align="right" class="font-inner">
                                    شماره دبیرخانه :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtCenterNo" ></asp:TextBox>
                                </td>
                                <td align="right" class="font-inner">
                                    تاريخ :
                                </td>
                                <td align="right">
                                    <asp:TextBox runat="server" ID="txtCenterDate" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlSpecs" Width="100%" GroupingText="ویژگیهای نامه">
                        <table width="100%">
                            <tr>
                                <td align="right" class="font-inner">
                                    طبقه بندي :
                                </td>
                                <td align="right">
                                    <asp:DropDownList runat="server" ID="cmbClassification" Width="125">
                                    </asp:DropDownList>
                                </td>
                                <td align="right" class="font-inner">
                                    نوع دريافت :
                                </td>
                                <td align="right">
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
                                    فوريت نامه&nbsp;
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
                <td>
                    <asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:ImageButton runat="server" ID="btnOK" AlternateText="پذيرش" SkinID="btnOk" OnClick="btnOK_Click"
                        OnClientClick="confirmation()" />&nbsp;
                    <asp:ImageButton runat="server" ID="btnCancel" AlternateText="انصراف" SkinID="btnCancel"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <br />
        <div class="bot-chng-bg-let">
        </div>
    </div>
