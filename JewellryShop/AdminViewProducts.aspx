<%@ Page Title="Manage Products" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminViewProducts.aspx.cs" Inherits="JewellryShop.AdminViewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .product-table-img {
            max-width: 80px;
            border-radius: 5px;
        }
        .message-success { color: #155724; background-color: #d4edda; border: 1px solid #c3e6cb; padding: .75rem 1.25rem; margin-bottom: 1rem; border-radius: .25rem; }
        .message-error { color: #721c24; background-color: #f8d7da; border-color: #f5c6cb; padding: .75rem 1.25rem; margin-bottom: 1rem; border-radius: .25rem; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-title-content">
                        <h1>Manage Products</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="#">Admin</a></li>
                            <li><a href="AdminViewProducts.aspx" class="active">Manage Products</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="page-content-wrapper" class="p-9">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mb-4 text-right">
                        <a href="AddProduct.aspx" class="btn btn-brand">Add New Product</a>
                    </div>
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
                    <div class="table-responsive">
                         <asp:GridView ID="gvProducts" runat="server" 
                             CssClass="table table-bordered table-striped"
                             AutoGenerateColumns="False" 
                             DataKeyNames="Id"
                             OnRowEditing="gvProducts_RowEditing"
                             OnRowUpdating="gvProducts_RowUpdating"
                             OnRowCancelingEdit="gvProducts_RowCancelingEdit"
                             OnRowDeleting="gvProducts_RowDeleting">
                             <Columns>
                                 <asp:TemplateField HeaderText="ID">
                                     <ItemTemplate>
                                         <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 
                                 <asp:TemplateField HeaderText="Image">
                                     <ItemTemplate>
                                         <asp:Image ID="imgProduct" runat="server" 
                                             ImageUrl='<%# Eval("Image", "~/Images/{0}") %>' 
                                             CssClass="product-table-img" 
                                             alt='<%# Eval("PName") %>' />
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <div>
                                             <label>Current:</label>
                                             <asp:Image ID="imgProductEdit" runat="server" 
                                                 ImageUrl='<%# Eval("Image", "~/Images/{0}") %>' 
                                                 CssClass="product-table-img" 
                                                 alt='<%# Eval("PName") %>' />
                                         </div>
                                         <hr />
                                         <div>
                                             <label>Upload New:</label>
                                             <asp:FileUpload ID="fileUploadImage" runat="server" />
                                         </div>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Product Name">
                                     <ItemTemplate>
                                         <asp:Label ID="lblPName" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:TextBox ID="txtPName" runat="server" Text='<%# Bind("PName") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="SKU">
                                      <ItemTemplate>
                                         <asp:Label ID="lblSKU" runat="server" Text='<%# Eval("SKU") %>'></asp:Label>
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:TextBox ID="txtSKU" runat="server" Text='<%# Bind("SKU") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Category">
                                      <ItemTemplate>
                                         <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:TextBox ID="txtCategory" runat="server" Text='<%# Bind("Category") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Price">
                                      <ItemTemplate>
                                         <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Badge">
                                      <ItemTemplate>
                                         <asp:Label ID="lblBadge" runat="server" Text='<%# Eval("Badge") %>'></asp:Label>
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:TextBox ID="txtBadge" runat="server" Text='<%# Bind("Badge") %>' CssClass="form-control"></asp:TextBox>
                                     </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Actions">
                                     <ItemTemplate>
                                         <asp:Button ID="btnEdit" runat="server" CommandName="Edit" CssClass="btn btn-info mr-2" Text="Edit" />
                                         <asp:Button ID="btnDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this product?');" />
                                     </ItemTemplate>
                                     <EditItemTemplate>
                                         <asp:Button ID="btnUpdate" runat="server" CommandName="Update" CssClass="btn btn-success mr-2" Text="Update" />
                                         <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" CssClass="btn btn-secondary" Text="Cancel" />
                                     </EditItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

