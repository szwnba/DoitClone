.class Lim/doit/pro/activity/AccountInfoActivity$1$1;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AccountInfoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/AccountInfoActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$1$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$1;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 262
    packed-switch p2, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$1$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity$1;->access$0(Lim/doit/pro/activity/AccountInfoActivity$1;)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$1$1;->this$1:Lim/doit/pro/activity/AccountInfoActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity$1;->access$1(Lim/doit/pro/activity/AccountInfoActivity$1;)V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
