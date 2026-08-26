.class Lim/doit/pro/activity/ContactListActivity$1;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private menuNames:[Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/activity/ContactListActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ContactListActivity$1;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ContactListActivity$1;)Lim/doit/pro/activity/ContactListActivity;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v8, 0x7f0c024f

    const v7, 0x7f0c002e

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$0(Lim/doit/pro/activity/ContactListActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$0(Lim/doit/pro/activity/ContactListActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$0(Lim/doit/pro/activity/ContactListActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2, p3}, Lim/doit/pro/activity/ContactListActivity;->access$1(Lim/doit/pro/activity/ContactListActivity;I)V

    .line 246
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$2(Lim/doit/pro/activity/ContactListActivity;)Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    move-result-object v2

    invoke-virtual {v2, p3}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->getItem(I)Lim/doit/pro/model/Contact;

    move-result-object v1

    .line 247
    .local v1, "contact":Lim/doit/pro/model/Contact;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 248
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    .line 247
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->isPassed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    const v3, 0x7f0c00f4

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 252
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    const v3, 0x7f0c024e

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 253
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    invoke-static {v8}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 254
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 260
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    new-instance v3, Lim/doit/pro/activity/ContactListActivity$1$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/ContactListActivity$1$1;-><init>(Lim/doit/pro/activity/ContactListActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/activity/ContactListActivity;->access$7(Lim/doit/pro/activity/ContactListActivity;Landroid/app/AlertDialog;)V

    .line 278
    return-void

    .line 256
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    invoke-static {v8}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 258
    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$1;->menuNames:[Ljava/lang/String;

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0
.end method
