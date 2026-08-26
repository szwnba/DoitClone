.class Lim/doit/pro/activity/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SettingsActivity$1;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/SettingsActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$1$1;->this$1:Lim/doit/pro/activity/SettingsActivity$1;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$1$1;->this$1:Lim/doit/pro/activity/SettingsActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/SettingsActivity$1;->access$0(Lim/doit/pro/activity/SettingsActivity$1;)Lim/doit/pro/activity/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/SettingsActivity;->access$0(Lim/doit/pro/activity/SettingsActivity;)V

    .line 347
    return-void
.end method
