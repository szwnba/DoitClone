.class Lim/doit/pro/activity/SettingsActivity$15;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$15;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SettingsActivity$15;)Lim/doit/pro/activity/SettingsActivity;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$15;->this$0:Lim/doit/pro/activity/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 606
    iget-object v2, p0, Lim/doit/pro/activity/SettingsActivity$15;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 605
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 608
    .local v1, "menuNames":[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f0c0255

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 609
    const/4 v2, 0x1

    const v3, 0x7f0c0256

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 610
    new-instance v2, Lim/doit/pro/activity/SettingsActivity$15$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SettingsActivity$15$1;-><init>(Lim/doit/pro/activity/SettingsActivity$15;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 622
    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    .line 623
    return-void
.end method
