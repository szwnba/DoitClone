.class Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;
.super Ljava/lang/Object;
.source "WidgetStyleSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetStyleSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/WidgetStyleSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->this$0:Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;)Lim/doit/pro/activity/WidgetStyleSettingsActivity;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->this$0:Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 141
    iget-object v1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->this$0:Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    .line 140
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->this$0:Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->access$0(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;-><init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    .line 151
    return-void
.end method
