.class public Lim/doit/pro/github/GitHubSyncActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "GitHubSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/github/GitHubSyncActivity$OnOk;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editToken()V

    return-void
.end method

.method static synthetic access$100(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editRepo()V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->onUpload()V

    return-void
.end method

.method static synthetic access$300(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->onRestore()V

    return-void
.end method

.method static synthetic access$400(Lim/doit/pro/github/GitHubSyncActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 9

    .line 21
    invoke-direct/range {p0 .. p8}, Lim/doit/pro/github/GitHubSyncActivity;->appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 11

    .line 93
    new-instance p6, Landroid/app/Dialog;

    const-string v0, "Theme.Doit.Light.Dialog"

    const-string v1, "style"

    invoke-direct {p0, v0, v1}, Lim/doit/pro/github/GitHubSyncActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    invoke-direct {p0, p1, v1}, Lim/doit/pro/github/GitHubSyncActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 95
    const-string v0, "title"

    invoke-direct {p0, v0}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    if-eqz p3, :cond_3c

    .line 97
    const-string p2, "ghs_msg"

    invoke-direct {p0, p2}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3c
    const-string p2, "ghs_input"

    invoke-direct {p0, p2}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 100
    if-eqz p2, :cond_5f

    .line 101
    if-eqz p8, :cond_51

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 102
    :cond_51
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 105
    :cond_5f
    const-string p3, "cancel_btn"

    invoke-direct {p0, p3}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lim/doit/pro/ui/component/DButton;

    .line 106
    const-string p7, "ok_btn"

    invoke-direct {p0, p7}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p7

    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lim/doit/pro/ui/component/DButton;

    .line 107
    if-eqz p4, :cond_7c

    invoke-virtual {p7, p4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_7c
    new-instance p4, Lim/doit/pro/github/GitHubSyncActivity$5;

    invoke-direct {p4, p0, p6}, Lim/doit/pro/github/GitHubSyncActivity$5;-><init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance p3, Lim/doit/pro/github/GitHubSyncActivity$6;

    invoke-direct {p3, p0, p6, p5, p2}, Lim/doit/pro/github/GitHubSyncActivity$6;-><init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/app/Dialog;Lim/doit/pro/github/GitHubSyncActivity$OnOk;Landroid/widget/EditText;)V

    invoke-virtual {p7, p3}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p6, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 120
    return-object p6
.end method

.method private editRepo()V
    .registers 10

    .line 184
    const-string v1, "dialog_ghs_input"

    const-string v2, "\u540c\u6b65\u4ed3\u5e93"

    const-string v3, "\u683c\u5f0f: \u7528\u6237\u540d/\u4ed3\u5e93\u540d"

    const-string v4, "\u4fdd\u5b58"

    new-instance v5, Lim/doit/pro/github/GitHubSyncActivity$10;

    invoke-direct {v5, p0}, Lim/doit/pro/github/GitHubSyncActivity$10;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    const/4 v6, 0x1

    .line 192
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->repo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 184
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lim/doit/pro/github/GitHubSyncActivity;->appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 193
    return-void
.end method

.method private editToken()V
    .registers 10

    .line 170
    const-string v1, "dialog_ghs_input"

    const-string v2, "GitHub Token"

    const-string v3, "\u7c98\u8d34 fine-grained Token\uff08\u4ec5\u9700 doit-data \u4ed3\u5e93 Contents \u8bfb\u5199\u6743\u9650\uff09"

    const-string v4, "\u4fdd\u5b58"

    new-instance v5, Lim/doit/pro/github/GitHubSyncActivity$9;

    invoke-direct {v5, p0}, Lim/doit/pro/github/GitHubSyncActivity$9;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    const/4 v6, 0x1

    .line 180
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 170
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lim/doit/pro/github/GitHubSyncActivity;->appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    return-void
.end method

.method private hasToken()Z
    .registers 2

    .line 124
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 125
    const-string v0, "\u8bf7\u5148\u8bbe\u7f6e Token"

    invoke-static {p0, v0}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editToken()V

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 28
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private onRestore()V
    .registers 11

    .line 146
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->hasToken()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 147
    :cond_7
    const-string v2, "dialog_ghs_confirm"

    const-string v3, "\u4ece GitHub \u6062\u590d"

    const-string v4, "\u5c06\u7528 GitHub \u4e0a\u7684\u5907\u4efd\u8986\u76d6\u672c\u673a\u5168\u90e8\u6570\u636e\uff0c\u6062\u590d\u540e\u5e94\u7528\u4f1a\u81ea\u52a8\u91cd\u542f\u3002\u786e\u5b9a\u7ee7\u7eed\uff1f"

    const-string v5, "\u6062\u590d"

    new-instance v6, Lim/doit/pro/github/GitHubSyncActivity$8;

    invoke-direct {v6, p0}, Lim/doit/pro/github/GitHubSyncActivity$8;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lim/doit/pro/github/GitHubSyncActivity;->appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 167
    return-void
.end method

.method private onUpload()V
    .registers 2

    .line 135
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->hasToken()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 136
    :cond_7
    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$7;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$7;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-static {p0, v0}, Lim/doit/pro/github/GitHubSync;->doUpload(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 32
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V
    .registers 4

    .line 66
    invoke-virtual {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    instance-of v0, p1, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v0, :cond_d

    .line 68
    check-cast p1, Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {p1, p2}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 70
    :cond_d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 37
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string p1, "activity_github_sync"

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 41
    if-eqz p1, :cond_26

    .line 42
    const-string v0, "ghs_title"

    const-string v1, "string"

    invoke-direct {p0, v0, v1}, Lim/doit/pro/github/GitHubSyncActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 47
    :cond_26
    const-string p1, "ghs_token"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$1;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 51
    const-string p1, "ghs_repo"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$2;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 55
    const-string p1, "ghs_upload"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$3;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 59
    const-string p1, "ghs_restore"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$4;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 84
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->finish()V

    .line 85
    const/4 p1, 0x1

    return p1

    .line 87
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 4

    .line 74
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 75
    const-string v0, "ghs_last_sync"

    invoke-direct {p0, v0}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/github/GitHubSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    if-eqz v0, :cond_2b

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u6b21\u540c\u6b65\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->lastSync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2b
    return-void
.end method
