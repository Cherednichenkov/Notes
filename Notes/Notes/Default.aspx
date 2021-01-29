<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Notes.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notes</title>
    <link rel="stylesheet" href="Content/Style_note.css">
</head>
<body>
    <header>
        <div class="logo">
            <img class="graficlogo" src="img/logo.png" alt="Logo">
        </div>
    </header>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" ItemType="Notes.Konsom_Notes"
             SelectMethod="GetKonsom_Notes" UpdateMethod="EditKonsom_Notes" DeleteMethod="DeleteKonsom_Notes"
             InsertMethod="InsertKonsom_Notes" DataKeyNames="Id_Notes">
            <LayoutTemplate>
                <table class="indent">
                    <tr>
                        <th>Название</th>
                        <th>Заметка</th>
                        <th>Дата создания</th>
                        <th>Действия</th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server"></tr>
                </table>
            </LayoutTemplate>

            <ItemTemplate>
                <tr>
                    <td><%# Item.Name_note %></td>
                    <td><%# Item.Note %></td>
                    <td><%# Item.Date %></td>
                    <td>
                        <asp:Button class="addbutton" CommandName="Edit" runat="server" Text="Изменить" />
                        <asp:Button class="addbutton" CommandName="Delete" runat="server" Text="Удалить" />
                    </td>
                </tr>
            </ItemTemplate>

            <EditItemTemplate>
                <tr>
                    <td><input id="name_note" runat="server" value="<%# BindItem.Name_note %>" /></td>
                    <td><input id="note" runat="server" value="<%# BindItem.Note %>" /></td>
                    <td></td>
                    <td>
                        <asp:Button class="addbutton" CommandName="Update" runat="server" Text="Сохранить" />
                        <asp:Button class="addbutton" CommandName="Delete" runat="server" Text="Отмена" />
                    </td>
                </tr>
            </EditItemTemplate>

            <InsertItemTemplate>
                <tr>
                    <td><input id="name_note" runat="server" value="<%# BindItem.Name_note %>" /></td>
                    <td><input id="note" runat="server" value="<%# BindItem.Note %>" /></td>
                    <td></td>
                    <td>
                        <asp:Button class="addbutton" ID="Button1" CommandName="Insert" runat="server" Text="Добавить заметку" />
                    </td>
                </tr>
            </InsertItemTemplate>
        </asp:ListView>
    </form>
    <div id="footer">
   &copy; Владислав Чередниченко
  </div>
</body>
</html>