<%@ page language="C#" masterpagefile="Horizontal.master" autoeventwireup="true" inherits="Cartable.UI.ChangePassword, App_Web_klpvb3dc" title="اتوماسیون اداری يگانه - تغییر رمز عبور" %>

<asp:Content ID="Content1" ContentPlaceHolderID="plcContent" runat="Server">

<div class="Container-chngpass">
<div class="title-all">
<div class="text-title-all">تغییر رمز عبور</div>
</div>
	<div class="top-chng-bg">
	</div>
	<div class="form-chng">
		<div class="table-chng" cellpadding="4" cellspacing="1">
			<div class="cont-chng-field">
				<div class="cont-chng" align="right" style="height: 81px">
					رمز عبور قبلي : </div>
				<div class="cont-chng-error" align="right" style="height: 81px">
					<asp:TextBox runat="server" ID="txtOldPass" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPass" ErrorMessage="*">
					</asp:RequiredFieldValidator>
				</div>
			</div>
			
			
			
			<div  class="cont-chng-field">
				<div class="cont-chng" align="right" style="height: 80px">
					رمز عبور جديد : </div>
				<div class="cont-chng-error" align="right" style="height: 80px">
					<asp:TextBox runat="server" ID="txtNewPass" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPass" ErrorMessage="*">
					</asp:RequiredFieldValidator>
				</div>
			</div>
			<div  class="cont-chng-field">
				<div class="cont-chng" align="right">
					تکرار رمز عبور جديد : </div>
				<div class="cont-chng-error" align="right">
					<asp:TextBox runat="server" ID="txtConfirm" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="*">
					</asp:RequiredFieldValidator>
					<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPass" ControlToValidate="txtConfirm" ErrorMessage="تکرار نادرست است.">
					</asp:CompareValidator>
				</div>
			</div>
			
			
			<div class="cont-chng-field">
				<div class="cont-chng-button"  >
					<asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label>
					<br />
					<asp:ImageButton runat="server" id="btnOK" alternatetext="تغيير رمز" 
                        skinid="btnOK" onclick="btnOK_Click"  />
					<asp:ImageButton  runat="server" id="btnCancel" alternatetext="انصراف" skinid="btnCancel" 
					onclick="btnCancel_Click" causesvalidation="false" />
				</div>
			</div>
		</div>
	</div>
	<div class="bot-chng-bg">
	</div>
</div>
</asp:Content>
