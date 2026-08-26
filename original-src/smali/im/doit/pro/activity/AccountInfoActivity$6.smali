.class Lim/doit/pro/activity/AccountInfoActivity$6;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AccountInfoActivity;->onLogoutClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AccountInfoActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$6;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 365
    packed-switch p2, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 367
    :pswitch_0
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$6;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity;->access$5(Lim/doit/pro/activity/AccountInfoActivity;)V

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$6;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity;->access$6(Lim/doit/pro/activity/AccountInfoActivity;)V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity$6;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AccountInfoActivity;->access$7(Lim/doit/pro/activity/AccountInfoActivity;)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
