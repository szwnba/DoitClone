.class Lim/doit/pro/activity/SettingsActivity$10;
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
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$10;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 543
    new-instance v0, Lim/doit/pro/asynctask/CheckVersion;

    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$10;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-direct {v0, v1}, Lim/doit/pro/asynctask/CheckVersion;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/asynctask/CheckVersion;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 544
    return-void
.end method
