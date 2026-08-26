.class Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;
.super Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;
.source "ProjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingProjectsNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;-><init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method
