.class public Lim/doit/pro/github/GitHubSyncActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "GitHubSyncActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editToken()V

    return-void
.end method

.method static synthetic access$100(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editRepo()V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->onUpload()V

    return-void
.end method

.method static synthetic access$300(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->onRestore()V

    return-void
.end method

.method static synthetic access$400(Lim/doit/pro/github/GitHubSyncActivity;)I
    .registers 1

    .line 19
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->dialogTheme()I

    move-result p0

    return p0
.end method

.method private dialogTheme()I
    .registers 5

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Theme.Doit.Light.Dialog"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private editRepo()V
    .registers 5

    .line 151
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->repo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 154
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 155
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->dialogTheme()I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 156
    const-string v2, "\u540c\u6b65\u4ed3\u5e93"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    const-string v2, "\u683c\u5f0f: \u7528\u6237\u540d/\u4ed3\u5e93\u540d"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lim/doit/pro/github/GitHubSyncActivity$8;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/github/GitHubSyncActivity$8;-><init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/widget/EditText;)V

    .line 159
    const-string v0, "\u4fdd\u5b58"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method

.method private editToken()V
    .registers 5

    .line 129
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 132
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 134
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->dialogTheme()I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 135
    const-string v2, "GitHub Token"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    const-string v2, "\u7c98\u8d34 fine-grained Token\uff08\u4ec5\u9700 doit-data \u4ed3\u5e93 Contents \u8bfb\u5199\u6743\u9650\uff09"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lim/doit/pro/github/GitHubSyncActivity$7;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/github/GitHubSyncActivity$7;-><init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/widget/EditText;)V

    .line 138
    const-string v0, "\u4fdd\u5b58"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 148
    return-void
.end method

.method private hasToken()Z
    .registers 2

    .line 78
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 79
    const-string v0, "\u8bf7\u5148\u8bbe\u7f6e Token"

    invoke-static {p0, v0}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->editToken()V

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 22
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
    .registers 4

    .line 100
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->hasToken()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 101
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->dialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 102
    const-string v1, "\u4ece GitHub \u6062\u590d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    const-string v1, "\u5c06\u7528 GitHub \u4e0a\u7684\u5907\u4efd\u8986\u76d6\u672c\u673a\u5168\u90e8\u6570\u636e\uff0c\u6062\u590d\u540e\u5e94\u7528\u4f1a\u81ea\u52a8\u91cd\u542f\u3002\u786e\u5b9a\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lim/doit/pro/github/GitHubSyncActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/github/GitHubSyncActivity$6;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    .line 104
    const-string v2, "\u6062\u590d"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    return-void
.end method

.method private onUpload()V
    .registers 2

    .line 89
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSyncActivity;->hasToken()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 90
    :cond_7
    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$5;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-static {p0, v0}, Lim/doit/pro/github/GitHubSync;->doUpload(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V
    .registers 4

    .line 49
    invoke-virtual {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 50
    instance-of v0, p1, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v0, :cond_d

    .line 51
    check-cast p1, Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {p1, p2}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 53
    :cond_d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 27
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_github_sync"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->setContentView(I)V

    .line 30
    const-string p1, "ghs_token"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$1;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 34
    const-string p1, "ghs_repo"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$2;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 38
    const-string p1, "ghs_upload"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$3;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 42
    const-string p1, "ghs_restore"

    invoke-direct {p0, p1}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$4;-><init>(Lim/doit/pro/github/GitHubSyncActivity;)V

    invoke-direct {p0, p1, v0}, Lim/doit/pro/github/GitHubSyncActivity;->row(ILim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 67
    invoke-virtual {p0}, Lim/doit/pro/github/GitHubSyncActivity;->finish()V

    .line 68
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 4

    .line 57
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 58
    const-string v0, "ghs_last_sync"

    invoke-direct {p0, v0}, Lim/doit/pro/github/GitHubSyncActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/github/GitHubSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    if-eqz v0, :cond_2b

    .line 60
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

    .line 62
    :cond_2b
    return-void
.end method
