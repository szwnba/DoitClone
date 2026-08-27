.class public Lim/doit/pro/ai/AISettingsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "AISettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 16
    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 21
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_ai_settings"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AISettingsActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 25
    if-eqz p1, :cond_36

    .line 26
    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 31
    :cond_36
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->wireSettings(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 37
    invoke-virtual {p0}, Lim/doit/pro/ai/AISettingsActivity;->finish()V

    .line 38
    const/4 p1, 0x1

    return p1

    .line 40
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
