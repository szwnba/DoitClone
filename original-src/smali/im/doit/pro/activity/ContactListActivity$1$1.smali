.class Lim/doit/pro/activity/ContactListActivity$1$1;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactListActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ContactListActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactListActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity$1;->access$0(Lim/doit/pro/activity/ContactListActivity$1;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p2

    .line 263
    .local v0, "menuName":Ljava/lang/String;
    const v1, 0x7f0c00f4

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity$1;->access$1(Lim/doit/pro/activity/ContactListActivity$1;)Lim/doit/pro/activity/ContactListActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$3(Lim/doit/pro/activity/ContactListActivity;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const v1, 0x7f0c024e

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 266
    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity$1;->access$1(Lim/doit/pro/activity/ContactListActivity$1;)Lim/doit/pro/activity/ContactListActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$4(Lim/doit/pro/activity/ContactListActivity;)V

    goto :goto_0

    .line 268
    :cond_2
    const v1, 0x7f0c024f

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 269
    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity$1;->access$1(Lim/doit/pro/activity/ContactListActivity$1;)Lim/doit/pro/activity/ContactListActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$5(Lim/doit/pro/activity/ContactListActivity;)V

    goto :goto_0

    .line 271
    :cond_3
    const v1, 0x7f0c002e

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 272
    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$1$1;->this$1:Lim/doit/pro/activity/ContactListActivity$1;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity$1;->access$1(Lim/doit/pro/activity/ContactListActivity$1;)Lim/doit/pro/activity/ContactListActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$6(Lim/doit/pro/activity/ContactListActivity;)V

    goto :goto_0
.end method
