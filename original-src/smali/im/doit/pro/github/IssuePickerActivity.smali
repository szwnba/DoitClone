.class public Lim/doit/pro/github/IssuePickerActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "IssuePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/github/IssuePickerActivity$Issue;
    }
.end annotation


# static fields
.field public static final DEFAULT_ISSUE_REPO:Ljava/lang/String; = "szwnba/affweb"

.field public static final K_ISSUE_REPO:Ljava/lang/String; = "issue_repo"


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private done:Z

.field private emptyView:Landroid/widget/TextView;

.field private footer:Landroid/widget/TextView;

.field private final issues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/doit/pro/github/IssuePickerActivity$Issue;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private loading:Z

.field private final main:Landroid/os/Handler;

.field private page:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/github/IssuePickerActivity;->issues:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/github/IssuePickerActivity;->page:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/github/IssuePickerActivity;->loading:Z

    .line 53
    iput-boolean v0, p0, Lim/doit/pro/github/IssuePickerActivity;->done:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/doit/pro/github/IssuePickerActivity;->main:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;
    .registers 1

    .line 33
    iget-object p0, p0, Lim/doit/pro/github/IssuePickerActivity;->issues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lim/doit/pro/github/IssuePickerActivity;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lim/doit/pro/github/IssuePickerActivity;->done:Z

    return p0
.end method

.method static synthetic access$1000(Lim/doit/pro/github/IssuePickerActivity;)Landroid/os/Handler;
    .registers 1

    .line 33
    iget-object p0, p0, Lim/doit/pro/github/IssuePickerActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lim/doit/pro/github/IssuePickerActivity;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lim/doit/pro/github/IssuePickerActivity;->done:Z

    return p1
.end method

.method static synthetic access$200(Lim/doit/pro/github/IssuePickerActivity;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lim/doit/pro/github/IssuePickerActivity;->loading:Z

    return p0
.end method

.method static synthetic access$202(Lim/doit/pro/github/IssuePickerActivity;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lim/doit/pro/github/IssuePickerActivity;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;
    .registers 1

    .line 33
    iget-object p0, p0, Lim/doit/pro/github/IssuePickerActivity;->footer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lim/doit/pro/github/IssuePickerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 33
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity;->footer:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lim/doit/pro/github/IssuePickerActivity;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lim/doit/pro/github/IssuePickerActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$500(Lim/doit/pro/github/IssuePickerActivity;Ljava/lang/String;)I
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->id(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lim/doit/pro/github/IssuePickerActivity;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$708(Lim/doit/pro/github/IssuePickerActivity;)I
    .registers 3

    .line 33
    iget v0, p0, Lim/doit/pro/github/IssuePickerActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lim/doit/pro/github/IssuePickerActivity;->page:I

    return v0
.end method

.method static synthetic access$800(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/BaseAdapter;
    .registers 1

    .line 33
    iget-object p0, p0, Lim/doit/pro/github/IssuePickerActivity;->adapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;
    .registers 1

    .line 33
    iget-object p0, p0, Lim/doit/pro/github/IssuePickerActivity;->emptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static issueRepo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 57
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "issue_repo"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "szwnba/affweb"

    :cond_14
    return-object p0
.end method

.method private loadMore()V
    .registers 4

    .line 155
    iget-boolean v0, p0, Lim/doit/pro/github/IssuePickerActivity;->loading:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lim/doit/pro/github/IssuePickerActivity;->done:Z

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 156
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/github/IssuePickerActivity;->loading:Z

    .line 157
    iget v0, p0, Lim/doit/pro/github/IssuePickerActivity;->page:I

    .line 158
    nop

    .line 159
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lim/doit/pro/github/IssuePickerActivity$3;

    invoke-direct {v2, p0, p0, v0}, Lim/doit/pro/github/IssuePickerActivity$3;-><init>(Lim/doit/pro/github/IssuePickerActivity;Lim/doit/pro/github/IssuePickerActivity;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 224
    return-void

    .line 155
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    if-eqz p0, :cond_19

    .line 229
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 231
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 232
    :cond_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_19
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 67
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_issue_picker"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_3d

    .line 72
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "issue_picker_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 79
    :cond_3d
    const-string p1, "issue_list"

    invoke-direct {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity;->list:Landroid/widget/ListView;

    .line 80
    const-string p1, "issue_empty"

    invoke-direct {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity;->emptyView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    invoke-static {p0}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7f

    .line 84
    const-string p1, "\u8bf7\u5148\u5728 \u8bbe\u7f6e \u2192 GitHub \u540c\u6b65 \u91cc\u914d\u7f6e Token"

    invoke-static {p0, p1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "im.doit.pro.github.GitHubSyncActivity"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lim/doit/pro/github/IssuePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->finish()V

    .line 87
    return-void

    .line 90
    :cond_7f
    new-instance p1, Lim/doit/pro/github/IssuePickerActivity$1;

    invoke-direct {p1, p0}, Lim/doit/pro/github/IssuePickerActivity$1;-><init>(Lim/doit/pro/github/IssuePickerActivity;)V

    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 136
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity;->list:Landroid/widget/ListView;

    new-instance v0, Lim/doit/pro/github/IssuePickerActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/github/IssuePickerActivity$2;-><init>(Lim/doit/pro/github/IssuePickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-direct {p0}, Lim/doit/pro/github/IssuePickerActivity;->loadMore()V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 240
    invoke-virtual {p0}, Lim/doit/pro/github/IssuePickerActivity;->finish()V

    .line 241
    const/4 p1, 0x1

    return p1

    .line 243
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
